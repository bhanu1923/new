FROM tomcat:8

COPY new/target/*.jar /usr/local/tomcat/webapps/

