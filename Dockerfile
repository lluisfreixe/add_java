FROM tomcat:7-jdk8-openjdk
USER root
COPY ./target/addjava-1.0.war /usr/local/tomcat/webapps/
# EXPOSE 8080
# CMD ["catalina.sh", "run"]