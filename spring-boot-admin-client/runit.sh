#!/bin/bash
mvn clean
mvn clean install
docker rm -f resource-server
docker system prune -a -y
docker build -t resource-server .
docker run -d -p 9999:9999   --name resource-server resource-server:latest
