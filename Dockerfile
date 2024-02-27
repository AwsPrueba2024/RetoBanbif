FROM openjdk:17-alpine
RUN apk add --no-cache tzdata
ENV TZ='America/Lima'
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

COPY target/*.jar application.jar

CMD ["java","-jar","application.jar"]
