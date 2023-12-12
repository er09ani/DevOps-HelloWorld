FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY ./webapp/target/*.war /usr/local/tomcat/webapps
RUN apt-get update && apt-get install -y nano
