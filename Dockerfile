FROM tomcat:8.0-alpine
ADD ./target/addjava-1.0.war /usr/local/tomcat/webapps/
# EXPOSE 8080