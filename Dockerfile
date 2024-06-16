# Use an OpenJDK image as the base image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled Java classes from the build directory into the Docker image
COPY build/classes /app/classes

# Set the classpath and specify the main class to run
CMD ["java", "-cp", "/app/classes", "Main"]