# DevOps Platform Stack

## Overview

This project demonstrates a complete DevOps workflow from development to cloud deployment.

It includes:

- Infrastructure as Code using Terraform
- CI pipeline with GitHub Actions (lint, test, Docker build)
- Dockerized multi-service architecture
- Reverse proxy with Nginx
- Monitoring with Prometheus and Grafana
- Centralized logging with Loki and Promtail
- Automated deployment to AWS EC2

The goal is to showcase real-world DevOps practices in a reproducible environment.

---

## Architecture

User  
↓  
Nginx (Reverse Proxy)  
↓  
FastAPI Application  
↓  
Prometheus (Metrics)  
↓  
Grafana (Dashboards)  

Logs → Loki → Grafana  

---

## Tech Stack

- Python (FastAPI)
- Docker & Docker Compose
- Nginx
- Prometheus
- Grafana
- Loki & Promtail
- Terraform
- AWS EC2
- GitHub Actions (CI)

---

## CI Pipeline

On every push to `main`, GitHub Actions:

1. Installs dependencies  
2. Runs flake8 linting  
3. Runs pytest unit tests  
4. Builds the Docker image  

Workflow file:

.github/workflows/ci.yml

---

## Run Locally

Start the full stack:

```bash
make up
```

Stop the stack:

```bash
make down
```

View logs:

```bash
make logs
```

Services:

- App → http://localhost:8080  
- Prometheus → http://localhost:9090  
- Grafana → http://localhost:3000  

---

## Cloud Deployment (AWS)

Infrastructure is defined in:

infra/terraform/

Deploy:

```bash
cd infra/terraform
terraform init
terraform apply
```

After apply, Terraform outputs:

- public_ip  
- public_dns  

Access the application:

http://<public_ip>:8080

Destroy infrastructure:

```bash
terraform destroy
```

---

## DevOps Concepts Demonstrated

- Infrastructure as Code (IaC)  
- Idempotent provisioning  
- Automated CI validation  
- Containerized services  
- Reverse proxy architecture  
- Monitoring and observability  
- Secure repository management (.gitignore, no state files, no private keys)  
- Cloud-based deployment automation  

---

## Production Improvements (Future Work)

- Remote Terraform state (S3 backend)  
- Docker image registry (ECR)  
- Automated CD deployment step  
- HTTPS with TLS certificates  
- Kubernetes-based orchestration  
- Environment separation (dev / staging / prod)  

---

## Purpose

This project demonstrates how application code, infrastructure, CI pipelines, and monitoring can work together in a fully automated DevOps workflow.