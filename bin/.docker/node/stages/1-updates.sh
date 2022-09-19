#!/usr/bin/env sh

# PHPIZE_DEPS=autoconf dpkg-dev dpkg file g++ gcc libc-dev make pkgconf re2c
# shellcheck disable=SC2086
apk add --update --virtual .build-deps $PHPIZE_DEPS
