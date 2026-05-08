# Cloud-Native CI/CD Pipeline using Docker, Jenkins and Kubernetes

This project demonstrates the implementation of a cloud-native CI/CD pipeline 
as part of the Container Orchestration for DevOps coursework at London South 
Bank University. The aim was to automate the process of building, containerising, 
and deploying a simple web application using modern DevOps tools.

---

# Project Overview

The application is a simple HTML portfolio page served using Nginx.

The CI/CD pipeline follows this workflow:

**GitHub → Jenkins → Docker → Docker Hub → Kubernetes (Minikube)**

Two AWS EC2 instances were used:
- **Jenkins-Master** — CI/CD pipeline controller (t2.micro)
- **Docker-Minikube-Agent** — Docker builds and Kubernetes environment (t2.large)

---

# Technologies Used

| Tool | Purpose |
|------|---------|
| Git & GitHub | Version control and source code management |
| Docker | Application containerisation |
| Docker Hub | Container image registry |
| Jenkins | CI/CD pipeline automation |
| Kubernetes (Minikube) | Container orchestration |
| AWS EC2 | Cloud infrastructure |

---

# Repository Structure
deveops-coursework/
├── index.html          # Portfolio web application
├── Dockerfile          # Container build instructions
├── Jenkinsfile         # CI/CD pipeline definition
├── deployment.yaml     # Kubernetes deployment manifest
├── service.yaml        # Kubernetes service manifest
├── README.md           # Project documentation
└── .gitignore          # Git ignore rules

# Branches

- `main` — stable production code
- `develop` — development branch monitored by Jenkins pipeline

---

# Docker Implementation

The application is containerised using a lightweight Nginx Docker image.

# Key Features
- Uses `nginx:alpine` base image (62MB)
- Serves static HTML content
- Configured to run on port 8081

# Commands

```bash
# Build the Docker image
docker build -t djchhetri26/devops-coursework-app .

# Push to Docker Hub
docker push djchhetri26/devops-coursework-app

# Run locally to test
docker run -p 8081:8081 djchhetri26/devops-coursework-app
```

---

# Jenkins CI/CD Pipeline

Jenkins automates the CI/CD pipeline using a `Jenkinsfile` stored in this repository.

# Pipeline Stages
1. **Checkout SCM** — pulls latest code from GitHub
2. **Code Pull** — confirms repository contents
3. **Image Build** — builds the Docker image
4. **Security Scan** — simulated vulnerability check
5. **Push Image** — pushes image to Docker Hub
6. **Deploy** — confirms deployment readiness

The pipeline was executed 14 times during development with 12 successful builds.

---

# Kubernetes Deployment

The application was deployed using Kubernetes with Minikube on AWS EC2.

# Commands Used

```bash
# Start Minikube
minikube start --driver=docker

# Deploy the application
kubectl create deployment my-devops-app \
  --image=djchhetri26/devops-coursework-app

# Check pods are running
kubectl get pods

# Access the application
kubectl port-forward deployment/my-devops-app 8080:80 --address 0.0.0.0

# Scale to 3 replicas
kubectl scale deployment my-devops-app --replicas=3

# Verify scaling
kubectl get pods
```

# Kubernetes Features Demonstrated
-  Pod deployment from Docker Hub image
-  Self-healing (deleted pod automatically replaced)
-  Horizontal scaling (1 → 3 replicas)

---

# How to Run

1. Clone the repository:
```bash
   git clone https://github.com/djchhetri26/deveops-coursework.git
```
2. Build the Docker image: `docker build -t devops-app .`
3. Run the container: `docker run -p 8081:8081 devops-app`
4. Open browser at `http://localhost:8081`
   
# Conclusion
This project demonstrates how Git, Docker, Jenkins and Kubernetes work together 
in a CI/CD pipeline to automate application deployment on cloud infrastructure. 
The pipeline successfully integrates all four tools and was validated through 
multiple build cycles on AWS EC2.
