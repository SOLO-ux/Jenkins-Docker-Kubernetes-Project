FROM tomcat:8.0.20-jre8

COPY /Kubernetes/target/*.war /usr/local/tomcat/webapps
