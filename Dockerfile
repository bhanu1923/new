FROM tomcat:8

COPY target/webapp-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/

CMD ["java", "-jar", "/usr/local/tomcat/webapps/webapp-1.0-SNAPSHOT.jar/"]
