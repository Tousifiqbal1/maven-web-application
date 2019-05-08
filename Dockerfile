FROM tomcat:8.0.20-jre8


COPY build/libs/gradel_web_app*.war /usr/local/tomcat/webapps/gradel_web_app.war
