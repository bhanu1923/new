FROM tomcat:8

COPY target/*.jar /opt/tomcat/apache-tomcat-8.5.51/webapps

CMD ["java", "-jar", "/opt/tomcat/apache-tomcat-8.5.51/webapps/root#new#target#webapp-1.0-SNAPSHOT.jar"]
