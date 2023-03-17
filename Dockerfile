From tomcat:9
RUN apt-get update -y 
WORKDIR /usr/local/tomcat/bin
RUN ./startup.sh
RUN chmod -R 777 /usr/local/tomcat
COPY gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
