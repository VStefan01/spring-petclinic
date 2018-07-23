FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/petclinic
EXPOSE 8080
CMD ["java", "-jar", "/opt/petclinic/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar"]

COPY /target/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar /opt/petclinic/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar
