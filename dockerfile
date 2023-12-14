FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
RUN cd /var/www
RUN  rm -rf html
COPY html /var/www
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]