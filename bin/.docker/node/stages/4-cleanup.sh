#!/usr/bin/env sh

pecl clear-cache

apk del -f .build-deps

rm /var/cache/apk/*

unset BINARY_DIR
