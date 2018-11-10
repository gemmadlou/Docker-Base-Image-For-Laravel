FROM php:7.2.12-fpm-alpine3.8

RUN apk update; \
    apk upgrade;

RUN docker-php-ext-install mysqli pdo_mysql

RUN chown -R www-data: ./storage