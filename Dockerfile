FROM tomcat:8

COPY target/*.jar /opt/tomcat/webapps

CMD ["java", "-jar", "/opt/tomcat/webapps/ webapp-1.0-SNAPSHOT.jar"]

