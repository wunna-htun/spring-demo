

# Use the official OpenJDK 17 image as the base image for building
FROM openjdk:17-jdk-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the gradlew script and gradle wrapper files to the container
COPY gradlew gradlew
COPY gradle gradle

# Give execute permissions to the gradlew script
RUN chmod +x gradlew

# Copy the build.gradle and settings.gradle files to the container
COPY build.gradle settings.gradle ./

# Copy the entire source code to the container
COPY src src

# Build the JAR file
RUN ./gradlew bootJar

# Second stage: Create a new image with the JAR file
FROM openjdk:17-jdk-slim

# Set the working directory for the application
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
