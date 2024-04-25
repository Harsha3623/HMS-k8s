FROM php:8.0-apache

WORKDIR /var/www/html
RUN apt-get update && apt-get install -y libmariadb-dev

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install pdo_mysql


COPY . /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 8080
EXPOSE 9000