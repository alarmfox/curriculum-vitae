# Curriculum vitae

My full curriculum vitae. Get the latest PDF
[here](https://github.com/alarmfox/curriculum-vitae/releases/latest/download/cv-capasso-giuseppe.pdf).

## Release

Releases are created locally with [Typst](https://typst.app/) and the
[GitHub CLI](https://cli.github.com/):

```sh
./scripts/release.sh v1.9.0
```

The command checks that the current commit is pushed, compiles `main.typ`, and
publishes `build/cv-capasso-giuseppe.pdf` with generated release notes. To
inspect all options or create a draft release:

```sh
./scripts/release.sh --help
./scripts/release.sh --draft v1.9.0
```
