# FROM websphere-liberty:22.0.0.9-kernel-java8-ibmjava
# RUN yum install -y nano
# USER root
# COPY --chown=1001:0  ./target/addjava-1.0.war /opt/ibm/wlp/usr/servers/defaultServer/apps
# COPY --chown=1001:0  server.xml /opt/ibm/wlp/usr/servers/defaultServer
# ARG VERBOSE=false
# ARG REPOSITORIES_PROPERTIES=""
# CMD apt -y install nano
#
FROM tomcat:8.0
USER root
ADD ./target/addjava-1.0.war /usr/local/tomcat/webapps/
# EXPOSE 8080