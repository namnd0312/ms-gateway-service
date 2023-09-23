# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM openjdk:11

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ms-gateway-service.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} /opt/app/ms-gateway-service.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","ms-gateway-service.jar"]
