FROM php:5.6-apache
#update 
#RUN apt-get update

## GD
#RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
#RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
#RUN docker-php-ext-install gd

COPY ./docker_file/php.ini  /usr/local/etc/php/conf.d/php.ini

## General
#RUN docker-php-ext-install zip
#RUN docker-php-ext-install pcntl
RUN docker-php-ext-install opcache
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
#RUN docker-php-ext-install mbstring
#RUN echo "opcache.enable_cli=0" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini 
RUN a2enmod rewrite
RUN a2enmod ssl
