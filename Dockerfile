FROM eclipse-temurin:17-jdk-focal
ADD target/demo-1.0-SNAPSHOT.jar demo-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo-1.0-SNAPSHOT.jar"]
