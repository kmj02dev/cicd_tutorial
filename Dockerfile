FROM openjdk:21-jdk-slim

COPY app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
