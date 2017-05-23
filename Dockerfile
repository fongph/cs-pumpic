FROM php:5.5-fpm

RUN apt-get update && apt-get install -y \
    git-core \
    libfreetype6-dev \
    libcurl4-gnutls-dev \
    curl \
    zlib1g-dev \
    libicu-dev \
    libgd-dev \

    && docker-php-ext-configure intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql mysqli intl curl gd \
    && docker-php-ext-install bcmath \
    && rm -r /var/lib/apt/lists/*

ADD ./compose/www.conf /usr/local/etc/php-fpm.d/
ADD ./compose/application.ini /usr/local/etc/php/conf.d/
ADD ./compose/browscap.ini /etc/browscap.ini

RUN curl -sS https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN mkdir /code && chown -R www-data:www-data /code
RUN echo "Test1"
WORKDIR /code