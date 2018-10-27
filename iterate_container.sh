#/bin/bash 
./gradlew clean build
docker build -t discovery-service .
docker run -p 8761:8761 discovery-service
