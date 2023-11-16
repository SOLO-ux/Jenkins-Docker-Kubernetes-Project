FROM centos

MAINTAINER hello@gritfy.com

RUN mkdir /usr/local/tomcat/webapps/myapp

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java

WORKDIR /usr/local/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]



COPY kubernetes/target/kubernetes-1.0-AMIT.war /usr/local/tomcat/webapps/kubernetes-1.0-AMIT.war
