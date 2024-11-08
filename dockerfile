# Use an official JDK as the base image
FROM openjdk:11-jre-slim

# Copy the application JAR file from the Maven target directory
COPY target/my-java-app-1.0-SNAPSHOT.jar /app.jar

# Expose the port the application will run on
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
