FROM openjdk:8-jdk-alpine
COPY add_java-1.0.war /var/home/core//lab1/
EXPOSE 10080
ENTRYPOINT ["java","-jar","/var/home/core//lab1/add_java-1.0.war"]