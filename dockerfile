FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
RUN rm /var/www/index.html
COPY apache_files /var/www
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]