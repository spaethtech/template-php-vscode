#!/usr/bin/env sh

docker-php-ext-install \
    bcmath \
    bz2 \
    exif \
    gd \
    gmp \
    intl \
    pdo_pgsql \
    soap \
    sockets \
    sysvmsg \
    sysvsem \
    sysvshm \
    zip \
    opcache

apk add bzip2

pecl install \
    apcu \
    ds \
    xdebug

#pecl install apcu xdebug

docker-php-ext-enable \
    apcu --ini-name docker-php-ext-apcu.ini \
    && echo "apc.enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini \
    && echo "apc.enable_cli=1" >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini

docker-php-ext-enable \
    ds \
    xdebug
