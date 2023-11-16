FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/myapp

COPY /kubernetes/src/main/webapp /usr/local/tomcat/webapps/
