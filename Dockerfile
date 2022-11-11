FROM tomcat:9.0-jre17-temurin-jammy

LABEL maintainer=”arun2005.iitr@gmail.com”

RUN cp workspace/Package-job/target/ABCtechnologies-1.0.war /tmp/ABCtechnologies-1.0.war
RUN unzip /tmp/ABCtechnologies-1.0.war -d /tmp/ABCtechnologies
RUN mv ABCtechnologies /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
