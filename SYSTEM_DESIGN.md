# System Design – Spring Boot Microservice (Docker + GitHub Actions)

---

## 🎯 Objective

To build and containerize a Spring Boot microservice and integrate a basic CI/CD pipeline using GitHub Actions.

---

## 🧱 Architecture Overview


- Single Docker container for MySQL
- One Spring Boot service container (running `.jar`)
- Managed with `docker-compose.yml`

---

## 🐳 Docker Compose Setup

### Services:
- `mysql-db`: MySQL 8.0
- `springboot-app`: Spring Boot App built from Dockerfile

### Docker Compose Highlights:
- Adds healthcheck on MySQL
- Uses environment variables to link MySQL and app
- Ports:
  - App: `8080`
  - DB: `3307`

---

## 🔁 CI/CD with GitHub Actions

GitHub Actions is used for:
- Building Docker image from `.jar`
- Pushing to Docker Hub automatically

Workflow file path:


Runs on:
- Push to `master` branch

---

## ❌ Kubernetes (Skipped)

> Kubernetes configuration was planned, but skipped due to system memory limits.

---

## ✅ Final Outcome

- Spring Boot microservice runs using Docker Compose
- CI/CD automates image build + Docker Hub push
