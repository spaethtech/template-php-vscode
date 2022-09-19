#!/usr/bin/env sh

INSIGHT_DIR=/home/node/.config/configstore

npm install -g yo

mkdir -p ${INSIGHT_DIR}
printf "{\n    optOut: true\n}" > ${INSIGHT_DIR}/insight-yo.yml
chown node:node "${INSIGHT_DIR}"/insight-yo.yml
unset INSIGHT_DIR
