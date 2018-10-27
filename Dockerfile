FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY  app.jar
EXPOSE 8761
COPY . .
RUN ["./gradlew", "build"]]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar", "build/libs/discovery_service.jar"]
