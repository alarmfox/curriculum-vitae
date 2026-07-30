#!/usr/bin/env bash

set -euo pipefail

readonly SCRIPT_NAME="${0##*/}"
readonly ASSET_NAME="cv-capasso-giuseppe.pdf"
readonly OUTPUT_DIR="build"
readonly OUTPUT_PATH="${OUTPUT_DIR}/${ASSET_NAME}"

usage() {
  cat <<EOF
Build the CV and publish it as a GitHub release asset.

Usage:
  ${SCRIPT_NAME} [--draft] <tag>
  ${SCRIPT_NAME} --help

Arguments:
  <tag>       Release tag in the form vMAJOR.MINOR.PATCH (for example, v1.9.0).

Options:
  --draft     Create a draft release instead of publishing immediately.
  -h, --help  Show this help.

The script:
  1. verifies that the working tree is clean and HEAD is pushed;
  2. compiles main.typ to ${OUTPUT_PATH};
  3. creates the tag and GitHub release with generated notes;
  4. uploads the PDF as ${ASSET_NAME}.
EOF
}

fail() {
  printf 'error: %s\n' "$*" >&2
  exit 1
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || fail "'$1' is required but was not found"
}

draft=false

case "${1:-}" in
  -h|--help)
    usage
    exit 0
    ;;
  --draft)
    draft=true
    shift
    ;;
esac

if [[ $# -ne 1 ]]; then
  usage >&2
  exit 2
fi

tag="$1"
[[ "$tag" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]] ||
  fail "tag must match vMAJOR.MINOR.PATCH (for example, v1.9.0)"

require_command git
require_command gh
require_command typst

repository_root="$(git rev-parse --show-toplevel 2>/dev/null)" ||
  fail "run this script from inside the curriculum-vitae repository"
cd "$repository_root"

[[ -f main.typ ]] || fail "main.typ was not found in the repository root"

if [[ -n "$(git status --porcelain --untracked-files=no)" ]]; then
  fail "tracked files have uncommitted changes; commit or stash them first"
fi

branch="$(git branch --show-current)"
[[ -n "$branch" ]] || fail "HEAD is detached; check out the release branch first"

head_sha="$(git rev-parse HEAD)"
remote_sha="$(
  git ls-remote --heads origin "refs/heads/${branch}" |
    awk 'NR == 1 { print $1 }'
)"

[[ -n "$remote_sha" ]] || fail "branch '${branch}' does not exist on origin"
[[ "$head_sha" == "$remote_sha" ]] ||
  fail "HEAD is not the commit currently pushed to origin/${branch}"

if git ls-remote --exit-code --tags origin "refs/tags/${tag}" >/dev/null 2>&1; then
  fail "tag '${tag}' already exists on origin"
fi

gh auth status >/dev/null

mkdir -p "$OUTPUT_DIR"
printf 'Building %s...\n' "$OUTPUT_PATH"
typst compile main.typ "$OUTPUT_PATH"

release_args=(
  release create "$tag"
  "${OUTPUT_PATH}#Curriculum vitae (PDF)"
  --target "$head_sha"
  --title "$tag"
  --generate-notes
)

if [[ "$draft" == true ]]; then
  release_args+=(--draft)
fi

printf 'Creating GitHub release %s...\n' "$tag"
gh "${release_args[@]}"

printf 'Published %s as %s\n' "$tag" "$ASSET_NAME"
