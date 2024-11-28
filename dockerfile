# Use a base image with Java
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/java-web-app.jar /app/java-web-app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "java-web-app.jar"]

