FROM openjdk:17-alpine
COPY . .
RUN apk add --update ttf-dejavu
RUN apk add --no-cache tzdata
ENV TZ='America/Lima'


COPY target/*.jar app.jar

CMD ["java","-jar","application.jar"]
