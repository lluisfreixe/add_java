FROM tomcat:8.0-alpine
ADD ./target/add_java-1.0.war /usr/local/tomcat/webapps/
ENV JAVA_MAIN_CLASS Entrada
EXPOSE 8080