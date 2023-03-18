From tomcat:9
RUN apt-get update -y 
COPY gameoflife.war /usr/local/tomcat/webapps
RUN chmod -R 777 /usr/local/tomcat
EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
RUN ./startup.sh
