#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Giuseppe Capasso"
#let location = "Naples, IT"
#let email = "capassog97@gmail.com"
#let github = "github.com/alarmfox"
#let linkedin = "linkedin.com/in/giuseppe-capasso97"
#let phone = "+39 327-369-9303"
#let personal-site = "giuseppe.capass.org"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of Naples Federico II",
  location: "Naples, IT",
  dates: dates-helper(start-date: "Sept 2022", end-date: "July 2025"),
  degree: "Master of Science, Computer Engineering (Score 110/110 cum Laude)",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Thesis: A Secure Firmware for Confidential Virtualization on Open-Source Hardware: design and implementation of trusted firmware and hypervisor for confidential VMs on RISC-V.
- *Future Work & References:* My thesis development is featured as a key future direction in the project presented at the #link("https://riscv-europe.org/summit/2025/media/proceedings/2025-05-14-RISC-V-Summit-Europe-P1.1.12-MERCOGLIANO-poster.pdf")[RISC-V Summit Europe 2025].
- Relevant coursework: Advanced Computer Architectures and GPU Programming, Real-Time Industrial Systems, Embedded Systems, Network Security, Software Security, Web and Real-Time Communication Systems.

#edu(
  institution: "University of Naples Federico II",
  location: "Naples, IT",
  dates: dates-helper(start-date: "Sept 2016", end-date: "Nov 2022"),
  degree: "Bachelor of Science, Computer Engineering (Score 103/110)",
)
- Thesis: Performance Evaluation of Priority-Based Scheduling Algorithms.
- Relevant coursework: Computer Architectures, Operating Systems, Real-Time Systems, Artificial Intelligence, Advanced Calculus

== Publications

- *Shadowfax: Enforcing Confidential Virtualization via an open TEE Security Manager* G. Capasso, S. Mercogliano, N. d'Ambrosio, S.P. Romano, A. Cilardo (In preparation, preprint forthcoming).
- *A Systematic Threat Modeling Methodology for Confidential Computing Architectures: a Case Study on RISC-V CoVE* G. Capasso, A. Cilardo, N. d'Ambrosio, S. P. Romano, L. Russo (In preparation).

== Teaching & Academic Activities

- *Seminar:* "Rust for Embedded Systems" at the Graduate Embedded Systems course (Prof. Alessandro Cilardo), University of Naples Federico II. #link("https://github.com/alarmfox/rust4embedded")[Material & Code].
- *Teaching Assistant (Tutor):* Led tutorials and practical sessions for undergraduate courses in Calculus I and Geometry.

== Work Experience
#work(
  title: "Research Intern, Project: SensAI4PRO",
  company: "University of Sannio",
  location: "Benevento, IT",
  dates: dates-helper(start-date: "Oct 2025", end-date: "Mar 2025"),
)
- *Confidential Computing on RISC-V.* developed a secure firmware and a trusted hypervisor implementing VM-based Confidential Computing for RISC-V application-class processors.
- *Security Test and platform automation.* Built a test infrastructure using QEMU and Python GDB to simulate attack scenarios from attack graphs.
- *Contribution to Simply-V.* Integrated OpenSBI, FreeRTOS and Linux on RISC-V-based soft SoC for Xilinx FPGAs. Contributed to build system architecture and atomics testing.
 (#link("https://github.com/HiSA-Team/Simply-V/pull/176")[\#176],#link("https://github.com/HiSA-Team/Simply-V/pull/182")[\#182],#link("https://github.com/HiSA-Team/Simply-V/pull/190")[\#190])

#work(
  title: "Instructor & Mentor @Cisco DTLab",
  location: "Naples, IT",
  company: "Clara Consortium",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Apr 2026"),
)
- *Designed and delivered interactive workshops (CCNA, DevOps and Cybersecurity).* Created training content and hands-on exercises to build operational skills in CI/CD, automation, and application security practices.
- *Managed laboratory infrastructure and services.* Provisioned, maintained, and supported lab environments to ensure availability, isolation, and accessibility for practical exercises and testing.
- *Coordinated industry-student final projects.* Served as liaison between corporate partners and student teams; supported requirements definition, solution validation, and assessment.
- *Led focused sessions.* Ran practical workshops on web development, REST API design, software security, and container technologies with an emphasis on hands-on learning and best practices.
- *Hackathon Support.* Provided technical support during events such as The Big Hack at Apple Developer Academy, including debugging, best practices, optimization guidance, and solution evaluation.

#work(
  title: "Software Engineer",
  location: "Naples, IT",
  company: "Gematica SRL",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Dec 2022"),
)
- *Built an air-quality monitoring platform.* Developed an IoT solution using LoRaWAN sensors, a WeatherLink station, and custom embedded systems; operated gateways, normalized data, created dashboards and alerts for stakeholders.
- *Engineered automation for smart gates.* Created the control architecture for metro network gates, integrating smart validators and supervising differential circuit breakers via Modbus TCP for monitoring and safety.
- *Developed a Wi-Fi traffic and passenger-flow analytics app.* Processed SNMP traps from Cisco WLCs to extract passenger-flow insights and support operational planning.

#work(
  title: "Software Developer",
  location: "Naples, IT",
  company: "NewNet SRL",
  dates: dates-helper(start-date: "Oct 2019", end-date: "Sept 2020"),
)
- *Multi-platform development (.NET / ASP.NET Core / Xamarin).* Built desktop applications with the .NET Framework, web services with ASP.NET Core, and cross-platform mobile apps with Xamarin. Containerized and deployed services using Docker.
- *Created a license-management system.* Implemented key issuance, expiration tracking, and reporting with a focus on security and traceability.
- *Implemented warehouse management with barcode integration.*  Built an Android application for dedicated devices for goods intake and shipment, improving logistics efficiency.
- *Integrated digital signatures (Aruba, smart card).* Automated PDF signing workflows using smartcards and managed certificate-based authentication for compliant archiving.

== Projects

#project(
  name: "Shadowfax",
  // Role is optional
  // role: "Maintainer",
  // Dates is optional
  // dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "github.com/HiSA-Team/shadowfax",
)
- Shadowfax is a CoVE-compliant TSM-driver written in Rust that provides the foundation for trusted computing on RISC-V application-class CPUs, introduced at the #link("https://riscv-europe.org/summit/2025/media/proceedings/2025-05-14-RISC-V-Summit-Europe-P1.1.12-MERCOGLIANO-poster.pdf")[RISC-V-Summit-Europe].
- Supports a digitally signed TEE Security Manager (TSM) with hypervisor capabilities for Trusted Virtual Machine management.
- Supports local attestation through DICE protocol.

#project(
  name: "Enclave benchmark",
  url: "github.com/alarmfox/enclave-benchmark"
)
- Developed a Rust-based CLI benchmarking tool for evaluating Trusted Execution Environments (TEE) on Intel SGX using Gramine.
- Performed fine-grained performance analysis by measuring instructions, energy consumption, and I/O using perf, Linux eBPF, and Intel RAPL across diverse workloads.
- Enabled deep tracing and I/O characterization, analyzing random vs. sequential disk I/O patterns.

#project(
  name: "Criticality-Aware Kubernetes",
  url: "github.com/alarmfox/criticality-aware-kubernetes"
)
- Evaluated Kubernetes for soft real-time workloads by analyzing pod startup latency and identifying bottlenecks within the Kubelet and Container Runtime Interface (CRI).
- Characterized end-to-end latency across varied Linux kernel configurations, demonstrating significant jitter reduction using SCHED_FIFO real-time scheduling and hardware-level CPU isolation (isolcpus).
- Applied Extreme Value Theory (EVT) to model tail behavior in startup distributions, estimating probabilistic Worst-Case Execution Time (WCET) using Generalized Extreme Value (GEV) fits.
- Designed a theoretical mixed-criticality framework for worker nodes, incorporating Fixed Window rate-limiting and Deferrable Server scheduling to provide deterministic execution guarantees.

#project(
  name: "RT-Jam",
  url: "github.com/alarmfox/rt-jam"
)
- Developed a low-latency Rust audio-streaming platform using QUIC/HTTP3 and WebAssembly.
- Integrated NATS and Protocol Buffers for high-performance media serialization and transmission.
- Added authentication and email verification to secure user access.

#project(
  name: "uav",
  url: "github.com/alarmfox/uav"
)
- A simple antivirus program for Linux systems written in C.
- Supports rootless container-like sandbox mode for untrusted program execution and dynamic malware analysis.
- Kernel-based interaction with Netlink API and eBPF for security and metrics collection.

#project(
  name: "xrpc",
  url: "github.com/alarmfox/xrpc"
)
- _xrpc_, a lightweight C library for distributed mathematical computation.
- Designed a compact binary protocol for batch transmission of *multidimensional* data.
- Implemented reference counting and connection pooling with cache-line alignment using lock-free primitives.

#project(
  name: "IPSec Fuzzing",
  url: "github.com/alarmfox/ipsec-fuzzing"
)
- Employed *Syzkaller* to fuzz the Linux IPsec implementation via Netlink and XFRM API, targeting stateful protocol vulnerabilities.
- Created *pseudo-syscalls* to initialize kernel structures and enable coverage-guided fuzzing for complex interactions.

== Open Source Contributions

- *argon2-cffi*: Added support for wasm32 to the package for the Pyodide WASM engine. (#link("https://github.com/hynek/argon2-cffi/pull/190")[\#190], #link("https://github.com/pyodide/pyodide/pull/5281")[\#5281])
- *Void Linux Packages*: Fixed a bug in the `network-manager-l2tp` package within the Void Linux repository. (#link("https://github.com/oSoWoSo/VUR/commit/51ace95ed4a48908457dd10bb7f6940801b304d3")[\#51ace95])

== Extracurricular Activities

#extracurriculars(
  activity: "Leonardo Summer Course",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Jul 2024"),
)
- *Cloud Security* Infrastructure security concepts focusing on Azure cloud solutions and automation strategies using Bicep and Terraform.
- *Vulnerability Assessment and Penetration Testing* Hands-on activities with Leonardo's Red Team on both Linux and Windows systems using Qualys, Metasploit.
- *Cyber Resilience Architectures*: Hazard analysis and risk analysis methodologies on supply chain scenarios.

#certificates(
  name: "Devnet",
  issuer: "Cisco",
  // url: "",
  date: "2021",
)
- Automated DevOps toolchains with Chef, Ansible, Puppet and applied network programmability using YANG models and management protocols (RESTCONF, NETCONF).
- Built containerized infrastructure and CI/CD pipelines with Docker and Jenkins, applying secure configuration, secrets management, image hardening, and safe-deployment practices.

#extracurriculars(
  activity: "Cisco Digital Ready Networking Bootcamp",
  dates: dates-helper(start-date: "Feb 2019", end-date: "Jul 2019"),
)
- Achieved *CCENT* (Cisco Certified Entry Networking Technician) and *PCAP* (Python Certified Associate) certifications.

// == Skills
// - *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
// - *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
