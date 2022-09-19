ARG VERSION
FROM php:${VERSION}-cli-alpine

ENV DEBIAN_FRONTEND=noninteractive
ENV BINARY_DIR=/usr/local/bin

COPY php/stages/ /tmp/stages/

RUN /tmp/stages/0-preparations.sh
RUN /tmp/stages/1-updates.sh
RUN /tmp/stages/2-extensions.sh
RUN /tmp/stages/3-composer.sh
RUN /tmp/stages/4-robo.sh
RUN /tmp/stages/5-cleanup.sh
RUN /tmp/stages/6-users.sh

COPY docker-entrypoint ${BINARY_DIR}/docker-entrypoint

ENV PATH "/home/php/bin:$PATH"
ENV PROJECT_DIR=/opt/project
ENV VIRTUAL_ENV=guest

ENV COMMAND=php
ENV EXTENSIONS=php,php3,php4,php5,phtml
ENV WORKING_DIR=${WORKING_DIR:-$PROJECT_DIR}

WORKDIR ${WORKING_DIR}

USER php

EXPOSE 9003

VOLUME [ "${PROJECT_DIR}" ]

ENTRYPOINT [ "docker-entrypoint" ]
CMD [ "php" ]
