# Use an OpenJDK image as the base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy current directory contents into the container at /app
COPY . /app

# Compile the HelloWorld.java file
RUN javac LoginPage.java

# Run the application
CMD ["java", "LoginPage"]
