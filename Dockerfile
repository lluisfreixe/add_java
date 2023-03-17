FROM tomcat:8.0
MAINTAINER lluis.freixenet_ext@gencat.cat
COPY master/target/addjava-1.0.war /usr/local/tomcat/webapps/