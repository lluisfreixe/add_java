FROM tomcat:7-jdk8-openjdk
USER root
COPY ./target/ROOT.war /usr/local/tomcat/webapps/
# EXPOSE 8080
# CMD ["catalina.sh", "run"]