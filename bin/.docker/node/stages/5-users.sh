#!/usr/bin/env sh

# Create a dedicated user
usermod -a -G root node

# Change the permissions so tools like composer and robo can self-update
chmod g+w /usr/local/bin
