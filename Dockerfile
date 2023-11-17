FROM tomcat:8.0.20-jre8

COPY /Kubernetes/target/customer_management_system.war /usr/local/tomcat/webapps/
