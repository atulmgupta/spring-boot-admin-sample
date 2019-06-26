#!/bin/bash
mvn clean
mvn clean install
docker rm -f zoo-service
docker system prune -a -y
docker build -t zoo-service .
docker run -d -p 8087:8087   --name zoo-service zoo-service:latest
