% Mike Agar

**Location:** Kitchener, Ontario  
**Email:** agarithm@gmail.com  
**Phone:** +1 (226) 339-4486  
**LinkedIn:** [linkedin.com/in/mikeagar](https://linkedin.com/in/mikeagar)  
**GitHub:** [github.com/agarithm](https://github.com/agarithm)  

---

## Summary

Senior full-stack engineer, DevOps practitioner, and technical leader with deep experience building data platforms, developer tooling, and consumer products end-to-end.  Proven track record leading teams, shipping complex distributed systems, and owning products from architecture through operations.  Comfortable moving from hands-on coding to roadmap definition, stakeholder management, and mentoring.

Areas of strength include:

- Full-stack web development (front end, APIs, data stores)
- Cloud-native data and ML platforms
- Kubernetes and containerized workloads (batch and microservices)
- DevOps, CI/CD, and infrastructure as code
- Technical leadership and people management
- Product thinking and startup execution

---

## Core Skills

**Languages:** TypeScript, JavaScript, Python, SQL, PHP, etc.

**Front End:** Angular, React, Redux, D3.js, HTML5, CSS3, Progressive Web Apps

**Back End / APIs:** NestJS, Node.js, CakePHP, REST APIs, Swagger / OpenAPI, RabbitMQ, Firestore, MySQL, PostgreSQL, MariaDB, Oracle, MongoDB, Cassandra, ElasticSearch

**Data & Analytics:** ETL/ELT, data warehousing, BigQuery, Redshift, S3, Azure Blob Storage, GCS, Palantir, ThoughtSpot, Tableau, Databricks, Snowflake

**Cloud & DevOps:** AWS, GCP, Azure, Kubernetes (GKE, Fargate), Docker, Terraform, GitLab CI/CD, Linux, OpenWRT, Pandoc

**Machine Learning:** Ollama, n8n, OpenAI, Apache Mahout, Hadoop, Bayesian content filtering, automated training pipelines, Nutch web crawling

**Leadership:** Engineering management, roadmap ownership, cross-functional collaboration, A/B testing, customer discovery, technical hiring, mentoring

---

## Professional Experience

### J.D. Power — Software Development Manager
**2022 – Present | Remote**

Lead the AI Cloud team responsible for a multi-tenant data warehouse and low-code ETL platform that powers much of J.D. Power's internal data processing.  The platform orchestrates large-scale batch processing on Kubernetes (GKE and Fargate) and exposes a user-friendly web application that lets data analysts configure and operate complex pipelines without deep infrastructure knowledge.

**Key achievements:**

- Own the roadmap and technical direction for the AI Cloud platform, balancing scalability, reliability, and feature delivery.
- Lead and mentor a team of engineers delivering features across front end, back end, and infrastructure.
- Maintain and evolve a low-code web application (Angular + NestJS + Firestore) and its REST APIs, used by internal analysts to build and manage ETL and data warehouse pipelines.
- Integrate with a wide range of data sources and sinks (BigQuery, Redshift, Oracle, Postgres, MariaDB, MySQL, S3, Azure Blob Storage, GCS, MongoDB, Cassandra, ElasticSearch, FTP/FTPS/SFTP).
- Support multiple runtime environments for pipelines (Python, PySpark, NodeJS, R, Kotlin, SQL, BQ SQL) and hosted IDEs (Jupyter Notebooks, R Studio).
- Implement and operate infrastructure as code and CI/CD using Terraform, Kubernetes, Docker, and GitLab CI/CD across AWS, GCP, and Azure.
- Diagnosed and resolved subtle Kubernetes scaling and scheduling issues affecting long-running batch jobs, including proper use of tolerations and `NoSchedule` taints to keep critical workloads running reliably.

**Tech:** Angular, NestJS, TypeScript, Firestore, Kubernetes (GKE), AWS, GCP, Azure, Terraform, Docker, GitLab CI/CD, BigQuery, Redshift, Oracle, Postgres, MariaDB, MySQL, S3, Azure Blob, GCS, MongoDB, Cassandra, ElasticSearch, Python, PySpark, NodeJS, R, SQL, BQ SQL.

---

### Signal Flare — CTO / Founder
**2020 – 2022 | Remote**

Founded and built Signal Flare, a context-rich analytics tool delivered as a Chrome extension that helps marketers track and analyze their growth initiatives across platforms.  Took the product from concept through development, launch, and iteration in the Chrome Web Store.

Signal Flare solves a core problem in marketing analytics: connecting day-to-day marketing actions with results spread across tools like Google Analytics, ahrefs, and Semrush.  The product provides a unified annotation layer, enabling marketers to see the impact of their campaigns in real time.

**Key achievements:**

- Conceived, designed, and implemented the full product as a solo founder/CTO.
- Built a Chrome extension using React, Redux, antd, and D3.js with Firestore as a backend data store.
- Implemented features for tracking marketing actions and their effects, performing differential analysis, color-coded note organization, and shared annotations across teams and tools.
- Drove customer discovery, product-market fit experiments, and iteration based on user feedback.

**Tech:** React, Redux, antd, D3.js, Firestore, Chrome Extensions, JavaScript/TypeScript.

---

### LoanConnect — CTO
**2017 – 2020 | London, Ontario (remote/hybrid as applicable)**

I joined LoanConnect in the early days and helped scale the platform to reach the total addressable market for sub-prime borrowers in Canada.  Owned both technology strategy and execution, with a strong focus on marketing automation, borrower lifecycle optimization, and deep integrations with lending partners.

**Key achievements:**

- Designed and implemented systems that synchronized marketing messages and channels with borrower lifecycle events (e.g., follow-ups on abandoned applications, automated alternative offers after lender rejection).
- Built and evolved the web application and APIs using CakePHP, MySQL, RabbitMQ, and jQuery, hosted on DigitalOcean.
- Implemented marketing and call center integrations using Salesforce, Five9, Mailchimp, and SendGrid.
- Led deep technical integrations with lenders, helping them expose APIs and callback interfaces so borrowers never had to re-enter their data.
- Designed affiliate tracking and commission-sharing logic that provided nearly 100% visibility into active sub-prime borrowers in Canada and aligned partner incentives.
- Managed and grew the engineering team, setting standards for quality, reliability, and shipping cadence.

**Tech:** CakePHP, MySQL, RabbitMQ, jQuery, DigitalOcean, Salesforce, Five9, Mailchimp, SendGrid, REST APIs, integrations.

---

### BluePoint Technology — CTO / Co-Founder
**2014 – 2017 | Kitchener, Ontario**

Co-founded BluePoint Technology and led the design and development of Kindera, a parental-control WiFi router described as "the easy way to protect your kids online."  This was an end-to-end hardware, firmware, and software effort that combined embedded Linux, networking, security, and machine learning.

**Key achievements:**

- Sourced and customized OEM 802.11AC router hardware, including increasing RAM to support advanced features.
- Designed and built custom firmware, including a tailored Linux kernel (via Cross-Compile Linux From Scratch) and device drivers, to ensure performance, security, and supply-chain integrity.
- Implemented a custom U-Boot bootloader with USB-based signed-image flashing and dual-core MIPS enablement.
- Built "Tattlescope," a DNS monitoring and rules engine using `libpcap`, RabbitMQ, and dynamic firewall rules to provide real-time, device-specific content control without breaking browsing experience.
- Solved VPN and DoH bypass issues via White List Mode, forcing DNS visibility while maintaining parental control guarantees.
- Designed and deployed a machine learning content filter using a naive Bayes classifier built on Apache Mahout and Hadoop, pre-trained on the top 1M websites.
- Implemented an automated Nutch crawling and retraining pipeline that continuously discovered and classified new sites, pushing updated ML models to the entire router fleet every 24 hours.
- Delivered a Progressive Web App for parents to view real-time activity, manage rules (time limits, bed time, homework time), and allow/block sites from anywhere.
- Built an online storefront with A/B testing and a management console for technical support and remote firmware updates.

**Tech:** Embedded Linux, OpenWRT, U-Boot, `libpcap`, RabbitMQ, Hadoop, Apache Mahout, Nutch, ML classification, Progressive Web Apps, firewall/iptable rules, A/B testing.

---

### BlackBerry — Senior Software Engineering Manager
**2010 – 2014 | Waterloo, Ontario**

Led a large engineering team working on advanced media products at BlackBerry.  The team built an ambitious BlackBerry TV product (ultimately not shipped) and was later re-tasked into the PlayBook and BB10 launch efforts.

**Key achievements:**

- Managed and mentored multiple teams of engineers delivering complex, cross-platform media and device software.
- Drove architecture and implementation for high-visibility projects under tight timelines.
- Collaborated across hardware, software, and product organizations to bring new experiences to market.
- Named on four patents related to this work.

**Tech:** QNX, C/C++, Java, OpenGL, Jenkins.

---

## Education

**Engineering Science, Electrical Engineering** — Western University, London, Ontario  
**Years:** 1992 – 1997

---

## Patents & Publications

- US 9300263 — *Apparatus and Method Pertaining to Volume Control* (Issued Mar 29, 2016)
- US 9209980 — *Provisioning a Shared Secret to a Portable Electronic Device and to a Service Entity* (Issued Dec 8, 2015)
- US 8963953 — *Interface for Previewing Image Content* (Issued Feb 24, 2015)
