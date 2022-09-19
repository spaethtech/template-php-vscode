#!/usr/bin/env sh

# Create a dedicated user
#useradd -ms /bin/sh -G root php
adduser -g "php" -G root php

# Change the permissions so tools like composer and robo can self-update
chmod g+w /usr/local/bin
