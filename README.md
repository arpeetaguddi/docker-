# 🐳 Docker - Apache Website Deployment

## 📌 Project Overview

This project demonstrates how to build a custom Docker image using a Dockerfile and deploy a static website with the Apache Web Server.

The Docker image is created using Ubuntu as the base image. During the image build process, Apache2 and unzip are installed, a website template is downloaded from TemplateMo, extracted, and moved to Apache's default web directory. Finally, Apache is started to serve the website on port 80.

---

## 🚀 Technologies Used

- Docker
- Ubuntu
- Apache2
- Linux

---

## 📂 Project Files

```
Dockerfile
README.md
```

---

## 📜 Dockerfile

```dockerfile
# Use Ubuntu as the base image
FROM ubuntu:latest

# Add image metadata
LABEL dev="arpeeta"

# Update package list
RUN apt-get update

# Install unzip
RUN apt-get install -y unzip

# Install Apache Web Server
RUN apt-get install -y apache2

# Download website template
ADD https://templatemo.com/download/templatemo_623_novapay /var/www/html/templatemo_623_novapay.zip

# Change working directory
WORKDIR /var/www/html/

# Extract website files
RUN unzip templatemo_623_novapay.zip

# Move extracted files to Apache document root
RUN mv templatemo_623_novapay/* /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache Web Server
CMD ["apachectl", "-D", "FOREGROUND"]
```

---

## ⚙️ Dockerfile Instructions Used

| Instruction | Description |
|------------|-------------|
| FROM | Specifies Ubuntu as the base image. |
| LABEL | Adds metadata to the image. |
| RUN | Executes commands while building the image. |
| ADD | Downloads the website template into the container. |
| WORKDIR | Sets the working directory. |
| EXPOSE | Exposes port 80 for HTTP traffic. |
| CMD | Starts Apache Web Server when the container starts. |

---

## 🏗️ Build Docker Image

```bash
docker build -t apache-website -f Dockerfile .
```

---

## ▶️ Run Docker Container

```bash
docker run -d -p 80:80 apache-website
```

---

## ✅ Verify Running Container

```bash
docker ps
```

---

## 🌐 Access the Website

Open your browser and visit:

```
http://<EC2-Public-IP>
```

Example:

```
http://13.xxx.xxx.xxx
```

---

## 🎯 Learning Outcomes

After completing this project, I learned how to:

- Create a custom Docker image using a Dockerfile.
- Install software inside a Docker image.
- Download files during the image build process.
- Configure Apache Web Server inside a container.
- Expose container ports.
- Run containers using Docker.
- Deploy a static website inside Docker.


