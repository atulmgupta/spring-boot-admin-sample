#!/bin/bash
mvn clean
mvn clean install
docker rm -f foo-service
docker system prune -a -y
docker build -t zoo-service .
docker run -d -p 8085:8085   --name foo-service foo-service:latest
