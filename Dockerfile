FROM php:8.0-apache
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql && \
        docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
CMD /usr/sbin/apache2ctl -D FOREGROUND
CMD apache2 start
COPY ./ /var/www/html/
EXPOSE 80
