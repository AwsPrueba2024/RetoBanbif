#
# BUILD STAGE
#
FROM maven:3.6.0-jdk-11-slim AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

#
# PACKAGE STAGE
#
FROM openjdk:11-jre-slim 
COPY --from=build /usr/src/app/target/maigolab_hello-1.0.0.jar /usr/app/maigolab_hello-1.0.0.jar 
EXPOSE 80
CMD ["java","-jar","/usr/app/maigolab_hello-1.0.0.jar"]  
