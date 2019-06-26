#!/bin/bash
mvn clean
mvn clean install
docker rm -f spring-boot-admin
docker system prune -a -y
docker build -t spring-boot-admin .
docker run -d -p 9999:9999   --name spring-boot-admin spring-boot-admin:latest
