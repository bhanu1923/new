FROM tomcat:8

COPY target/*.jar /usr/local/tomcat/*.jar

CMD ["java","-jar"," webapp-1.0-SNAPSHOT.jar"]



