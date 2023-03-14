FROM websphere-liberty:22.0.0.9-kernel-java8-ibmjava
ARG VERBOSE=false
ARG REPOSITORIES_PROPERTIES=""
#
# FROM tomcat:8.0-alpine
# ADD ./target/addjava-1.0.war /usr/local/tomcat/webapps/
# EXPOSE 8080