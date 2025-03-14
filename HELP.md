

# Project Helper File

## Project Run Commands

To run the project, you can use the following commands:

- **Start the application:**
  ```bash
  ./gradlew bootrun
  ```

- **Clean the project:**
  ```bash
  ./gradlew clean
  ```

- **Build the JAR file:**
  ```bash
  ./gradlew bootJar
  ```

- **Run the JAR file:**
  ```bash
  java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
  ```

---

## Docker Commands

### Build the Docker Image

To build the Docker image, use the following command:
```bash
docker build -t demo-app .
```

### Run the Docker Container

To run the Docker container, you can use:
```bash
docker run -p 8080:8080 demo-app
```

> **Note:** The application port and the container port can differ. You can use port forwarding as follows:
```bash
docker run -p 8090:8080 demo-app
```

---

## Manage Docker Containers

### List Running Containers

To find the list of running containers, use:
```bash
docker ps
```

### List All Containers

To view all containers (including stopped ones), use:
```bash
docker ps -a
```

### Stop a Running Container

To stop a specific container, use:
```bash
docker stop <container_id_or_name>
```

### Remove a Container

To remove a container, use:
```bash
docker rm <container_id>
```

---

## Delete Docker Images

To delete a Docker image, use:
```bash
docker rmi demo-app
```

### Remove a Container by ID

To remove a specific container by its ID, use:
```bash
docker rm <container_id>
```

---

## Tagging and Pushing Docker Images

Before pushing your Docker image to Docker Hub, make sure to tag it first:
```bash
docker tag demo-java-app wunnahtun99/demo-java-app:latest
```

Finally, push the image to your Docker Hub repository:
```bash
docker push wunnahtun99/demo-java-app:latest
```

---

### Kubernetes

minikube start
minikube stop 

minikube dashboard 

minikube ip 


Docker image is already exit 
* service deploy

 `kubectl apply -f deployment.yaml
  kubectl apply -f service.yaml
`

kubectl get service
kubectl cluster-info
kubectl get pods
kubectl logs





port forword if you need

kubectl port-forward service/demo-java-app-service 8081:8080
