🐳 Docker
What is Docker?

Docker is an open-source containerization platform that enables developers and DevOps engineers to build, package, deploy, and run applications inside containers.

A Docker container is a lightweight, portable, and isolated environment that contains an application along with all required dependencies, libraries, configurations, and runtime components.

Docker ensures that an application runs consistently across different environments such as development, testing, and production, eliminating the common problem of:

"It works on my machine but not in production."

Why is Docker Used?
1. Consistency

Docker provides the same runtime environment across all stages of application delivery.

Development
Testing
Production

This reduces dependency issues and makes troubleshooting easier.

2. Portability

Docker containers can run on any system that supports Docker, including:

Local machines
Data centers
Cloud platforms (AWS, Azure, GCP)

Applications can be moved easily without configuration changes.

3. Lightweight & Efficient

Unlike Virtual Machines, containers share the host operating system kernel, making them:

Faster to start
Less resource-consuming
More efficient
4. Scalability

Docker makes application scaling easier by running multiple container instances based on workload requirements.

Example:

        Load Balancer
              |
   ---------------------
   |         |          |
Container Container Container
    1          2          3
5. Isolation

Each container runs independently with its own:

Filesystem
Processes
Network
Dependencies

A failure in one container does not affect other containers.

How Docker Works?

Docker follows a client-server architecture:

Docker Client (CLI)
          |
          |
Docker Engine
          |
          |
Docker Daemon
          |
          |
Docker Containers

The Docker Engine is responsible for creating, managing, and running containers.

Core Components of Docker
1. Docker Image

A Docker image is a read-only template used to create containers.

It contains:

Application code
Runtime
Libraries
Dependencies
System tools

Example:

nginx:latest
mysql:8
ubuntu:22.04
2. Docker Container

A container is a running instance of a Docker image.

It provides an isolated environment where applications can execute independently.

Example:

Docker Image
      |
      ↓
Docker Container
3. Dockerfile

A Dockerfile is a text file containing instructions to create a Docker image.

Example:

FROM ubuntu:latest

RUN apt update

RUN apt install nginx -y

CMD ["nginx","-g","daemon off;"]

Workflow:

Dockerfile
     |
     ↓
Docker Build
     |
     ↓
Docker Image
     |
     ↓
Docker Run
     |
     ↓
Docker Container
4. Docker Hub

Docker Hub is a cloud-based image repository where users can:

Store Docker images
Share images
Download pre-built images

Example:

docker pull nginx
Docker Workflow
Application Code
        |
        ↓
     Dockerfile
        |
        ↓
 Build Docker Image
        |
        ↓
 Push Image to Registry
        |
        ↓
 Pull Image on Server
        |
        ↓
 Run Container
Docker in DevOps

Docker plays an important role in CI/CD pipelines:

Developer
    |
   Git
    |
 Jenkins Pipeline
    |
 Docker Build
    |
 Docker Image
    |
 Kubernetes
    |
 Production Environment
