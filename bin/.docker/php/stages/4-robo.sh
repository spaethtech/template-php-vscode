#!/usr/bin/env sh

apk add wget

wget https://robo.li/robo.phar -O "$BINARY_DIR"/robo

chmod +x "$BINARY_DIR"/robo
chmod g+w "$BINARY_DIR"/robo
