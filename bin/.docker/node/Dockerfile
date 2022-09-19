ARG VERSION
FROM node:${VERSION}-alpine

ENV DEBIAN_FRONTEND=noninteractive
ENV BINARY_DIR=/usr/local/bin

COPY node/stages/ /tmp/stages/

RUN /tmp/stages/0-preparations.sh
RUN /tmp/stages/1-updates.sh
RUN /tmp/stages/2-gulp.sh
RUN /tmp/stages/3-yeoman.sh
RUN /tmp/stages/4-cleanup.sh
RUN /tmp/stages/5-users.sh

COPY docker-entrypoint ${BINARY_DIR}/docker-entrypoint

ENV PATH "/home/node/bin:$PATH"
ENV PROJECT_DIR=/usr/src/app
ENV VIRTUAL_ENV=guest

ENV COMMAND=node
ENV EXTENSIONS=js,es6,jsx,mjs
ENV WORKING_DIR=${WORKING_DIR:-$PROJECT_DIR}

WORKDIR ${WORKING_DIR}

USER node

#EXPOSE 9003

VOLUME [ "${PROJECT_DIR}" ]

ENTRYPOINT [ "docker-entrypoint" ]
CMD [ "node" ]
