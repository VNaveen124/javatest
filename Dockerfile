# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the HelloTeam.java file
RUN javac HelloTeam.java

# Define the command to run the application
CMD ["java", "HelloTeam"]
