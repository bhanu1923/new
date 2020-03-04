FROM tomcat:8

COPY new/target/*.jar /usr/local/tomcat

CMD ["java","-jar","/new/target/webapp-1.0-SNAPSHOT.jar"]
