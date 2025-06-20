# Use JDK base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside the container
WORKDIR /app

# Copy the JAR (use exact name!)
COPY target/spring-boot-crud-example-2-0.0.1-SNAPSHOT.jar app.jar
COPY wait-for-it.sh wait-for-it.sh


# Expose the port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
