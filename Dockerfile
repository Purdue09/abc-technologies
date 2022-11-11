FROM tomcat:9.0-jre17-temurin-jammy

LABEL maintainer=”arun2005.iitr@gmail.com”

ADD ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]