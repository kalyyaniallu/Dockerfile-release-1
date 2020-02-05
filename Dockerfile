FROM tomcat:8.5.37-jre8
MAINTAINER kalyani
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install default-jdk -y
ADD https://kalyani123.s3-us-west-2.amazonaws.com/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
