#!/bin/bash
mvn clean
mvn clean install
docker rm -f loo-service
docker system prune -a -y
docker build -t loo-service .
docker run -d -p 8086:8086   --name loo-service loo-service:latest
