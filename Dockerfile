FROM php:apache
RUN a2enmod rewrite
COPY . /var/www

WORKDIR /var/www

RUN apt-get update
RUN apt-get install -y zip unzip zlib1g-dev
RUN docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer install
