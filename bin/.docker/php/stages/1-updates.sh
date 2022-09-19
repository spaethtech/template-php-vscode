#!/usr/bin/env sh

#PHPIZE_DEPS=${PHPIZE_DEPS:-"autoconf dpkg-dev dpkg file g++ gcc libc-dev make pkgconf re2c"}

#apk update
# apt-get -y install \
#     libbz2-dev \
#     zlib1g-dev \
#     libpng-dev \
#     libgmp-dev \
#     libicu-dev \
#     libpq-dev \
#     libxml2-dev \
#     libzip-dev

# PHPIZE_DEPS=autoconf dpkg-dev dpkg file g++ gcc libc-dev make pkgconf re2c
# shellcheck disable=SC2086
apk add --update --virtual .build-deps $PHPIZE_DEPS
