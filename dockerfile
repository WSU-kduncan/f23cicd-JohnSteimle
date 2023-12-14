FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
RUN  rm /var/www/html/index.html
COPY  html/index.php /var/www/html
COPY  html/styles.css /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]