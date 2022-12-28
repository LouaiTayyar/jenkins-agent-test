FROM maven:3.8.6-eclipse-temurin-19-alpine
ARG JAR_FILE=target/JavaAPI-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#

#
# FROM maven:3.8.6-eclipse-temurin-19-alpine
#
# WORKDIR /app
# COPY . .
# RUN mvn clean install
#
# CMD mvn spring-boot:run
