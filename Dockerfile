# Use an official Maven image to build the app
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set the working directory
WORKDIR /app

# Copy pom.xml and install dependencies
COPY pom.xml .

# Copy the source code
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Use a minimal JDK image to run the app
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
