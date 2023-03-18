From tomcat:9
RUN apt-get update -y 
WORKDIR /usr/local/tomcat/bin
RUN ./startup.sh
COPY gameoflife.war /usr/local/tomcat/webapps
RUN chmod -R 777 /usr/local/tomcat
EXPOSE 8080
