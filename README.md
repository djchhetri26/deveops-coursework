# Cloud-Native CI/CD Pipeline using Docker, Jenkins and Kubernetes

This project demonstrates the implementation of a cloud-native CI/CD pipeline as part of the Container Orchestration for DevOps coursework at London South Bank University.

The aim of the project was to automate the process of building, containerising and preparing deployment of a simple web application using modern DevOps tools.

---

# Project Overview

The application is a simple HTML portfolio page served using Nginx.  
The CI/CD pipeline follows this workflow:

GitHub → Jenkins → Docker → Docker Hub → Kubernetes (Minikube)

Two AWS EC2 instances were used:
- Jenkins-Master (CI/CD pipeline)
- Docker-Minikube-Agent (Docker and Kubernetes environment)

---

# Technologies Used

- Git & GitHub – version control
- Docker – containerisation
- Docker Hub – image registry
- Jenkins – CI/CD automation
- Kubernetes (Minikube) – container orchestration
- AWS EC2 – cloud infrastructure

---

# Repository Structure


