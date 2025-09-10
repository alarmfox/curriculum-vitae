#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Giuseppe Capasso"
#let location = "Naples, IT"
#let email = "capassog97@gmail.com"
#let github = "github.com/alarmfox"
#let linkedin = "linkedin.com/in/giuseppe-capasso97"
#let phone = "+39 327-369-9303"
#let personal-site = "stuxf.dev"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
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
  degree: "Master of Science, Computer Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 3.9/4.0 | Thesis: A Secure Firmware for Confidential Virtualization on Open-Source Hardware
- Relevant coursework: Advanced Computer Architectures and GPU Programming, Advanced Real-Time Systems, Embedded Systems, Network Security, Software Security, Web and Real-Time Communication System.

#edu(
  institution: "University of Naples Federico II",
  location: "Naples, IT",
  dates: dates-helper(start-date: "Sept 2016", end-date: "Nov 2022"),
  degree: "Bachelor of Science, Computer Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 3.5/4.0 | Thesis: Performance Evaluation of Priority-Based Scheduling Algorithms
- Relevant coursework: Computer Architectures, Operating Systems, Real-Time Systems, Artificial Intelligence, Advanced Calculus, Linear Algebra.

== Work Experience
#work(
  title: "Research Intern",
  dates: dates-helper(start-date: "Jul 2025", end-date: "Current"),
  location: "Naples, IT",
)
- *Confidential Computing for RISC-V.* Continued working on Shadowfax: a firmware for Confidential Virtualization for RISC-V application-class processors.
- *Bare metal hypervisor.* Created a simple RISC-V hypervisor to launch minimal virtual machines leveraging RISC-V H-extension.
- *Test and platform automation.* Built a firwmare test infrastructure using QEMU and integrated with Github CI/CD.

#work(
  title: "Mentor @Cisco DTLab",
  location: "Naples, IT",
  company: "Clara Consortium/Cisco",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Sep 2025"),
)
- *Designed and delivered interactive workshops (DevOps & Cybersecurity).* Created training content and hands-on exercises to build operational skills in CI/CD, automation, and application security practices.
- *Managed laboratory infrastructure and services.* Provisioned, maintained, and supported lab environments to ensure availability, isolation, and accessibility for practical exercises and testing.
- *Coordinated industry-student final projects.* Served as liaison between corporate partners and student teams; supported requirements definition, solution validation, and assessment.
- *Led specialist sessions.* Ran practical workshops on web development, REST API design, software security, and container technologies with an emphasis on hands-on learning and best practices.

#work(
  title: "Cisco Specialist @The Big Hack",
  location: "Apple Developer Academy, Naples, IT",
  company: "Clara Consortium/Cisco",
  dates: dates-helper(start-date: "Jun 28, 2025", end-date: "Jun 29, 2025"),
)
- Provided technical support to teams adopting Cisco solutions, including debugging, best practices, and optimization guidance.
- Contributed to the jury’s decision-making process by evaluating proposed solutions on technical feasibility and innovation.

#work(
  title: "Software Engineer",
  location: "Naples, IT",
  company: "Gematica SRL",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Dec 2022"),
)
- *Built an air-quality monitoring platform.* Developed an IoT solution using LoRaWAN sensors, a WeatherLink station and custom embedded systems; operated gateways, normalized data, created dashboards and alerts for stakeholders.
- *Engineered automation for smart gates.* Created the control architecture for metro network gates, integrating smart validators and supervising differential circuit breakers via Modbus TCP for monitoring and safety.
- *Developed a Wi-Fi traffic and passenger-flow analytics app.* Processed SNMP traps from Cisco WLCs to extract passenger-flow insights and support operational planning.
- *Administered Cisco networks and access.* Managed LAN/WLAN infrastructure, applied WPA2-Enterprise policies, integrated Active Directory for authentication, and implemented a guest portal via PacketFence.

#work(
  title: "Software Developer",
  location: "Naples, IT",
  company: "NewNet SRL",
  dates: dates-helper(start-date: "Oct 2019", end-date: "Sept 2020"),
)
- *Multi-platform development (.NET / ASP.NET Core / Xamarin).* Built desktop applications with the .NET Framework, web services with ASP.NET Core, and cross-platform mobile apps with Xamarin. Containerized services and deployed microservice architectures using Docker to improve portability.
- *Created a license-management system.* Implemented key issuance, expiration tracking, and reporting with a focus on security and traceability.
- *Implemented warehouse management with barcode integration.*  Built an android application for dedicated devices for goods intake and shipment, improving logistics efficiency.
- *Integrated digital signatures (Aruba, smartcard).* Automated PDF signing workflows using smartcards and managed certificate-based authentication for compliant archiving.

== Projects

#project(
  name: "Shadowfax",
  // Role is optional
  // role: "Maintainer",
  // Dates is optional
  // dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "github.com/HiSA-Team/shadowfax/tree/feature/create-tvm",
)
- Shadowfax is a CoVE-specification–compliant TSM-driver written in Rust that provides the foundation for trusted computing on RISC-V application-class CPUs.
- Implemented TEECALL/TEERET protocols across multiple supervisor domains with a secure context-switch.
- Boots a digitally signed TEE Security Module (TSM) for Trusted Virtual Machine management.
- Supports Linux kernel boot and a custom bare-metal hypervisor for guest creation.
- Introduced at the RISCV Summit Europe 2025 (https://riscv-europe.org/summit/2025/media/proceedings/2025-05-14-RISC-V-Summit-Europe-P1.1.12-MERCOGLIANO-poster.pdf).

#project(
  name: "Enclave benchmark",
  url: "github.com/alarmfox/enclave-benchmark"
)
- Built a Rust CLI tool to benchmark Trusted Execution Environments (TEE) on Intel SGX using Gramine.
- For each workload the tool creates an enclave and collects metrics (instructions, energy, I/O) using _perf_, Linux _eBPF_, and _Intel RAPL_.
- Supports a in-depth tracing mode which traces all memory accesses and allocations.
- Analyzes disk I/O access random and sequential patterns using an eBPF program.

#project(
  name: "xrpc",
  url: "github.com/alarmfox/xrpc"
)
- _xrpc_, a lightweight C library for distributed mathematical computation.
- Designed a compact binary protocol for batch transmission of *multidimensional* data.
- Implemented reference counting and connection pooling with cache-line alignment using lock-free primitives.

#project(
  name: "RT-Jam",
  url: "github.com/alarmfox/rt-jam"
)
- Developed a low-latency Rust audio-streaming platform using QUIC/HTTP3 and WebAssembly.
- Integrated NATS and Protocol Buffers for high-performance media serialization and transmission.
- Added authentication and email verification to secure user access.

#project(
  name: "IPSec Fuzzing",
  url: "github.com/alarmfox/ipsec-fuzzing"
)
- Employed *Syzkaller* to fuzz the Linux IPsec implementation via Netlink and XFRM API, targeting stateful protocol vulnerabilities.
- Created *pseudo-syscalls* to initialize kernel structures and enable coverage-guided fuzzing for complex interactions.

== Extracurricular Activities

#extracurriculars(
  activity: "Leonardo Summer Course",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Jul 2024"),
)
- *Cloud Security* Infrastructure security concepts focusing Azure cloud solutions and automation strategies using Bicep and Terraform.
- *Vulnerability Assesment and Penetration Testing* Hands on activities with Leonardo's Red Team on both Linux and Windows systems using Qualys, metasploit.
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
- Completed a final project with the Italian Leather Research Institute, developing a remote collaboration system that integrated augmented reality features into Cisco Webex.

// == Skills
// - *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
// - *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
