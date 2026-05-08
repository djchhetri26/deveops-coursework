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

# Docker Implementation

The application was containerised using a lightweight Nginx Docker image.

#Key Features:
- Uses nginx:alpine
- Serves static HTML content
- Runs on port 8081

# Commands:

```bash
docker build -t djchhetri26/devops-coursework-app .
docker push djchhetri26/devops-coursework-app

# Jenkins CI/CD Pipeline

Jenkins was used to automate the CI/CD pipeline using a Jenkinsfile.

# Pipeline Stages:
- Checkout SCM
- Code Pull
- Image Build
- Security Scan
- Push Image
- Deploy

The pipeline was executed multiple times during development and successfully built and pushed the Docker image to Docker Hub.

# Kubernetes Deployment

The application was deployed using Kubernetes with Minikube.

# Commands used:

```bash
kubectl create deployment my-devops-app --image=djchhetri26/devops-coursework-app
kubectl get pods
kubectl port-forward deployment/my-devops-app 8080:80

kubectl scale deployment my-devops-app --replicas=3
kubectl get pods

# Conclusion

This project demonstrates how Git, Docker, Jenkins and Kubernetes work together in a CI/CD pipeline to automate application deployment.
