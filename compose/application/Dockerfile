FROM php:5.5-fpm

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libcurl4-gnutls-dev \
    curl \
    zlib1g-dev \
    libicu-dev \
    libgd-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql mysqli intl curl gd \
    && rm -r /var/lib/apt/lists/*

#ADD environment.conf /usr/local/etc/php-fpm.d/
ADD application.ini /usr/local/etc/php/conf.d/
ADD browscap.ini /etc/browscap.ini

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

RUN mkdir /code && chown -R www-data:www-data /code

WORKDIR /code
