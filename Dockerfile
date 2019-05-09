FROM tomcat:8.0.20-jre8


COPY $WORKSPACE/target/*.war /usr/local/tomcat/webapps
