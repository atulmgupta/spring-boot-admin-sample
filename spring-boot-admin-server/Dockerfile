FROM java:8
LABEL maintainer="atul@lenderprice.com"
EXPOSE 9999
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} client.jar
# Run the jar file 
ENTRYPOINT ["java","-jar","/client.jar"]