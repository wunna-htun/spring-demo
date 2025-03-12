# Demo Java 17 Spring Boot Application

This is a simple demo Java application built using Spring Boot, packaged into a Docker container. The application runs on port `8080` inside the container and is accessible via port `9090` on your local machine.

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Build and Run](#build-and-run)
- [Access the Application](#access-the-application)
- [Test the Application](#test-the-application)
- [Stopping the Application](#stopping-the-application)
- [Docker Commands](#docker-commands)

## Overview

This demo application is built using **Java 17** and **Spring Boot**. It is packaged into a Docker container and exposes a simple test endpoint (`/hello`) to verify that the application is running correctly. The application listens on port `8080` inside the container, and port `9090` on the host machine is mapped to it for external access.

## Prerequisites

Before you begin, ensure that you have the following installed on your machine:

- [Docker](https://hub.docker.com/r/wunnahtun99/demo-java-app) – for containerization.
- [Java 17 or later](https://adoptopenjdk.net/) – for running the Spring Boot application locally (optional, but useful for development).

## Build and Run

### 1. Clone the Repository
Clone the repository to your local machine.


```bash
git clone https://github.com/yourusername/demo-java-app.git
cd demo-java-app



docker build -t demo-java-app .

docker run -d -p 9090:8080 demo-java-app


## Jar create command 
java -jar target/your-project-name-version.jar


### Changes made:
- Focused on the demo Java 17 Spring Boot app.
- Added a testing link (`http://localhost:9090/hello`) to confirm the app is running.
- Simplified the instructions to make it more specific for your use case.

Let me know if you'd like to add anything else!

