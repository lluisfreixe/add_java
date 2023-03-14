FROM tomcat:8.0-alpine
ADD ./target/add_java-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
#
#
# FROM openjdk:8-jdk-alpine
# COPY add_java-1.0.war /var/home/core//lab1/
# EXPOSE 10080
# ENTRYPOINT ["java","-jar","/var/home/core//lab1/add_java-1.0.war"]
#
# FROM tomcat:8-jre8
# COPY ./target/add_java-1.0.war /var/home/core//lab1
#
