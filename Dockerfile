FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/myapp

COPY /kubernetes/index.html /usr/local/tomcat/webapps/index.html
