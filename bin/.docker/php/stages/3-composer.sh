#!/usr/bin/env sh

apk add git unzip

php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');"
php /tmp/composer-setup.php --install-dir="$BINARY_DIR" --filename=composer
rm /tmp/composer-setup.php
