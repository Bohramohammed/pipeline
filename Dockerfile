FROM ubuntu:20.04

RUN apt install -y apache2

COPY ./* /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
