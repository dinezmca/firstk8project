FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD
MAINTAINER BOSE
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package
FROM openjdk:8-jre-alpine
RUN ls -altrh .
RUN mkdir /app
WORKDIR /app/
RUN pwd
ENV PORT 8080
EXPOSE 8080
COPY --from=MAVEN_BUILD /build/target/boot-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java","-jar","boot-0.0.1-SNAPSHOT.jar"]
