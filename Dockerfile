FROM openjdk:17-alpine
ADD target/*.jar *.jar
ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]
EXPOSE 8080
