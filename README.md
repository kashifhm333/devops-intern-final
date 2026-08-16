# DevOps Intern Final Assessment

[![CI Pipeline](https://github.com/kashifhm333/devops-intern-final/actions/workflows/ci.yml/badge.svg)](https://github.com/kashifhm333/devops-intern-final/actions)

* **Name:** Kashif Hussain
* **Date:** 2026-08-16
* **Description:** A complete end-to-end DevOps pipeline demonstrating version control, Linux scripting, containerization, CI/CD automation, job scheduling with HashiCorp Nomad, and centralized log monitoring with Grafana Loki.

---

## 📁 Project Structure

```text
devops-intern-final/
├── .github/
│   └── workflows/
│       └── ci.yml                  # GitHub Actions CI/CD workflow
├── scripts/
│   └── sysinfo.sh                  # System information shell script
├── nomad/
│   └── hello.nomad                 # HashiCorp Nomad job configuration
├── monitoring/
│   ├── loki_setup.txt              # Loki & Promtail setup documentation
│   └── promtail-config.yaml        # Promtail configuration
├── Dockerfile                       # Docker container definition
├── hello.py                         # Sample Python application
└── README.md                        # Project documentation
```

---

## 🚀 1. Git & GitHub Setup

The project repository was initialized locally using Git and pushed to GitHub as a public repository.

The project demonstrates basic Git workflow, including:

* Repository initialization
* Version control
* Commit management
* Remote repository configuration
* Pushing code to GitHub
* GitHub Actions integration

### Sample Application

The project contains a simple Python application:

```text
hello.py
```

---

## 🐧 2. Linux & Shell Scripting

A shell script is included to automate the collection of basic system information.

### Script Location

```text
scripts/sysinfo.sh
```

### Make the Script Executable

```bash
chmod +x scripts/sysinfo.sh
```

### Run the Script

```bash
./scripts/sysinfo.sh
```

### Information Collected

The script displays:

* Current username using `whoami`
* Current date and time using `date`
* Disk usage using `df -h`

Example commands:

```bash
whoami
date
df -h
```

---

## 🐳 3. Docker Containerization

The Python application is containerized using Docker and a lightweight Python base image.

### Build the Docker Image

```bash
docker build -t hello-devops .
```

### Run the Container

```bash
docker run hello-devops
```

This demonstrates the basic Docker workflow:

```text
Source Code → Dockerfile → Docker Image → Docker Container
```

---

## ⚡ 4. CI/CD with GitHub Actions

A continuous integration pipeline is configured using GitHub Actions.

### Workflow Location

```text
.github/workflows/ci.yml
```

The pipeline automatically runs when changes are pushed to the repository or when a pull request is created.

### Pipeline Responsibilities

The CI pipeline:

1. Checks out the repository.
2. Sets up the required environment.
3. Builds the Docker image.
4. Runs the application/container validation.
5. Reports the build status.

### CI/CD Flow

```text
Developer
    ↓
Git Push / Pull Request
    ↓
GitHub Repository
    ↓
GitHub Actions
    ↓
Build Docker Image
    ↓
Test / Validate
    ↓
Pipeline Result
```

---

## 🏃 5. Job Deployment with HashiCorp Nomad

The project includes a HashiCorp Nomad job specification for deploying the containerized application.

### Job Configuration

```text
nomad/hello.nomad
```

The Nomad configuration runs the Docker container as a service task with minimal resource allocation.

### Run the Nomad Job

```bash
nomad job run nomad/hello.nomad
```

### Check Job Status

```bash
nomad job status hello-devops
```

Nomad is used to demonstrate container scheduling and workload deployment.

### Deployment Flow

```text
Docker Image
     ↓
Nomad Job Specification
     ↓
Nomad Scheduler
     ↓
Docker Task
     ↓
Running Application
```

---

## 📊 6. Monitoring with Grafana Loki

Centralized logging is implemented using Grafana Loki and Promtail.

### Monitoring Components

* **Loki:** Log aggregation system
* **Promtail:** Log collection agent
* **Grafana:** Log visualization and monitoring

Detailed configuration and operational instructions are available in:

```text
monitoring/loki_setup.txt
```

Promtail configuration is located at:

```text
monitoring/promtail-config.yaml
```

### Start Loki

```bash
docker run -d \
  --name loki \
  -p 3100:3100 \
  grafana/loki:latest
```

Loki will be available on:

```text
http://localhost:3100
```

### Logging Flow

```text
Application / Container
        ↓
      Logs
        ↓
    Promtail
        ↓
      Loki
        ↓
     Grafana
        ↓
   Log Visualization
```

---

## 🛠️ Technologies Used

| Category         | Technology      |
| ---------------- | --------------- |
| Version Control  | Git             |
| Repository       | GitHub          |
| Operating System | Linux           |
| Scripting        | Bash            |
| Application      | Python          |
| Containerization | Docker          |
| CI/CD            | GitHub Actions  |
| Job Scheduling   | HashiCorp Nomad |
| Log Collection   | Promtail        |
| Log Aggregation  | Grafana Loki    |
| Visualization    | Grafana         |

---

## 🎯 Assessment Objectives

This project demonstrates practical knowledge of the following DevOps concepts:

* Git and GitHub version control
* Linux command-line operations
* Bash scripting
* Docker image creation
* Docker container execution
* CI/CD automation
* GitHub Actions workflows
* Container scheduling with Nomad
* Centralized logging
* Promtail log collection
* Grafana Loki log aggregation
* Basic DevOps automation and monitoring

---

## 📌 Conclusion

This project provides an end-to-end demonstration of a basic DevOps workflow, starting from source-code management and Linux scripting and progressing through containerization, CI/CD automation, workload scheduling, and centralized logging.

The goal of the assessment is to demonstrate how different DevOps tools can work together to automate software delivery and improve application deployment and observability.

---

## 👨‍💻 Author

**Kashif Hussain**

DevOps Intern Final Assessment — 2026
