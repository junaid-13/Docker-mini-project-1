### 🚀 Docker mini project

A **Dockerized** application showcasing how to containerize and deploy an application using **Docker**.

## 📌 Features
✔️ Containerized using Docker   
✔️ Works seamlessly across environments  

---

## 🛠 Prerequisites
Ensure you have the following installed:
- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Docker Compose** (if applicable): [Install Compose](https://docs.docker.com/compose/install/)

Verify installations:
```sh
docker --version
docker-compose --version  # If using Compose
```

## 📥 Installation & Setup
Clone the repository:
```sh 
git clone https://github.com/junaid-13/Docker-mini-project-1.git
cd Docker-mini-project-1
```

### 🐳 Docker Usage
1️⃣ Building the Docker Image
```sh
docker build -t my-docker-image .
```
2️⃣ Running the Container
```sh
docker run -d -p 5000:5000 --name my_first_container
```

3️⃣ Stopping & Removing the Container
```sh

docker stop <container_id>
docker rm <container_id>     
```


