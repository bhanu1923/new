FROM tomcat:8

COPY /var/lib/jenkins/workspace/Test/target/*.jar /usr/local/tomcat/

