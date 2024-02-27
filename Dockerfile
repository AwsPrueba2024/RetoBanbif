FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY /home/runner/work/RetoBanbif/RetoBanbif/target/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
