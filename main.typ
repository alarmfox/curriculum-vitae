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
- Relevant Coursework: Advanced Computer Architectures and GPU Programming, Advanced Real-Time Systems, Network Security, Software Security, Web and Real-Time communication Systems

#edu(
  institution: "University of Naples Federico II",
  location: "Naples, IT",
  dates: dates-helper(start-date: "Sept 2016", end-date: "Nov 2022"),
  degree: "Bachelor's of Science, Computer Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 3.5/4.0 | Thesis: Performance evaluation of priority based scheduling algorithms
- Relevant Coursework: Real-time Systems, Artificial Intelligence, Linear Algebra, Computer architectures

== Work Experience
#work(
  title: "Mentor @Cisco DTLab",
  location: "Naples, IT",
  company: "Clara Consortium/Cisco",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Sep 2025"),
)
- *Design and delivery of interactive workshops (DevOps & Cybersecurity)* Developed training content and hands-on exercises to build operational skills in CI/CD, automation, and application security practices.
- *Laboratory infrastructure and services management* Responsible for provisioning, maintenance, and operational support of lab environments, ensuring availability, isolation, and accessibility for practical activities and testing.
- *Coordination between companies and students in final project work*  Acted as liaison between corporate partners and student teams during the deliverable phase; supported requirement definition, solution validation, and results assessment.
- *Delivery of specialist workshops* Led practical sessions on Web development, REST API design and consumption, software security, and container technologies, with a focus on hands-on exercises and best practices.

#work(
  title: "Cisco Specialist @The Big Hack",
  location: "Apple Developer Academy, Naples, IT",
  company: "Clara Consortium/Cisco",
  dates: dates-helper(start-date: "Jun 28, 2025", end-date: "Jun 29, 2025"),
)
- Provided specialized technical support to participating teams for the adoption and integration of Cisco solutions, including debugging, best practices, and optimization.
- Contributed to the jury’s decision-making process by evaluating proposed solutions and participating in winner selection.
- Assessed projects with a focus on technical feasibility and innovation.

#work(
  title: "Software Engineer",
  location: "Naples, IT",
  company: "Gematica SRL",
  dates: dates-helper(start-date: "Feb 2021", end-date: "Dec 2022"),
)
- *Design and development of an air quality monitoring platform* Implemented an IoT solution for detecting and visualizing air quality using LoRaWAN sensors (Libelium) and a WeatherLink weather station. Managed the full LoRaWAN infrastructure with indoor/outdoor gateways, data collection and normalization, and development of dashboards and alerts for operational stakeholders.
- *Architecture for automated management of smart gates* Designed and implemented the control architecture for metro network gates, integrating smart validators and supervising differential circuit breakers via Modbus TCP for automation, monitoring, and operational safety.
- *Application for Wi-Fi traffic monitoring and passenger flow analysis* Developed an application to analyze passenger flows in the metro network using SNMP traps from Cisco WLCs; leveraged data to optimize travel planning and support operational decision-making.
- *Cisco network infrastructure and user access management* Administered Cisco LAN/WLAN networks with WPA2-Enterprise policy implementation, integration with Active Directory for employee authentication, and design/management of a guest portal via PacketFence for visitor access.

#work(
  title: "Software Developer",
  location: "Naples, IT",
  company: "NewNet SRL",
  dates: dates-helper(start-date: "Oct 2019", end-date: "Sept 2020"),
)
- *Multi-platform design and development (.NET / ASP.NET Core / Xamarin)* Designed and developed desktop applications with .NET Framework, web services and interfaces with ASP.NET Core, and cross-platform mobile apps with Xamarin. Containerized services and deployed microservices architectures using Docker to enable scalability and portability.
- *Customer license management system* Developed a license management tool including key issuance, expiration tracking, and reporting, with focus on security and traceability of activations.
- *Warehouse management with barcode integration* Built a warehouse control solution integrating barcode readers for inventory processes, goods intake, and shipments, improving efficiency of logistics workflows.
- *Digital signature integration (Aruba, smartcard)* Implemented digital signature protocol via Aruba for automated signing of PDF documents using smartcards, managing certificate authentication and signature workflow for compliant archiving.

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
- shadowfax is a CoVE specification compliant TSM-driver written in Rust. It is intended to provide the basic foundations for RISC-V Application-class CPUs Trusted Computing
- Achieved TEECALL/TEERET protocol with multiple supervisor domains
- Supports Linux kernel booting and bare custom bare-metal hypervisor for guest creation

#project(
  name: "Enclave benchmark",
  url: "github.com/alarmfox/enclave-benchmark"
)
- Developed a Rust CLI application to benchmark Trusted Execution Environments (TEE) on Intel SGX using Gramine, as part of the High Performance and Quantum Computing course
- For each workload, the application generates an enclave and collects low- and high-level metrics on instructions, energy, and I/O using performance counters with _perf_, _Linux eBPF_, and _Intel RAPL_

#project(
  name: "RT-Jam",
  url: "github.com/alarmfox/rt-jam"
)
- Built a fully functional low-latency Rust audio streaming web platform based on the *QUIC/HTTP3* protocol leveraging *WebAssembly*
- Implemented NATS and Protocol Buffers for high-performance media packet serialization and transmission
- Added user authentication and email verification to ensure secure access.

#project(
  name: "IPSec Fuzzing",
  url: "github.com/alarmfox/ipsec-fuzzing"
)
- Used *Syzkaller* to fuzz the Linux IPsec implementation via Netlink and XFRM subsystems, targeting stateful protocol vulnerabilities.
- Implemented *pseudo-syscalls* to initialize kernel data structures, enabling coverage-guided fuzzing for complex, stateful interactions.

#project(
  name: "xrpc",
  url: "github.com/alarmfox/xrpc"
)
- _xrpc_, a lightweight C library targeting distributed mathematical computation
- Designed a compact binary protocol for batch transmission of *multidimensional* data
- Implemented atomic reference counting, connection pooling with cache-line alignement to achieve high-performance request processing

== Extracurricular Activities

#extracurriculars(
  activity: "Leonardo Summer Course",
  dates: dates-helper(start-date: "Jan 2024", end-date: "Jul 2024"),
)
- *Cloud Security* Infrastructure security concepts focusing Azure cloud solutions and automation strategies using Bicep and Terraform
- *Vulnerability Assesment and Penetration Testing* Hands on activities with Leonardo's Red Team on both Linux and Windows systems using Qualys, metasploit
- *Cyber Resilience Architectures*: Hazard analysis and risk analysis methodologies on supply chain scenarios

#certificates(
  name: "Devnet",
  issuer: "Cisco",
  // url: "",
  date: "2021",
)
- Automated DevOps toolchains with Chef, Ansible, and Puppet and network programmability using YANG models and management protocols (RESTCONF, NETCONF).
- Building containerized infrastructures and CI/CD pipelines with Docker and Jenkins, applying security best practices across the stack (secure configuration, secrets management, image hardening, and safe deployments).

#extracurriculars(
  activity: "Cisco Digital Ready Networking Bootcamp",
  dates: dates-helper(start-date: "Feb 2019", end-date: "Jul 2019"),
)
- Achieved *CCENT* (Cisco Certified Entry Networking Technician) and *PCAP* (Python Certified Associate) certifications.
- Completed a final project with the Italian Leather Research Institute, developing a remote collaboration system integrating augmented reality features into Cisco Webex.

// == Skills
// - *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
// - *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
