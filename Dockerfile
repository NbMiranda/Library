FROM php:7.3-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo pdo_mysql