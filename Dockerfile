FROM php:7.2-apache
RUN docker-php.ext-install pdo && pdo_mysql mysqli
CMD /usr/sbin/apache2ctl -D FOREGROUND
CMD mysql start
COPY ./ /var/www/html/
EXPOSE 80
