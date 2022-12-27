FROM openjdk:8-alpine3.9
MAINTAINER lyx990926@outlook.com
COPY ./ROOT.jar /
ENTRYPOINT ["sh","-c","java -jar -Xms1024m -Xmx2048m /ROOT.jar"]
EXPOSE 8080