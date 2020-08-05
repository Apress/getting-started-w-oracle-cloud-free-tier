#!/usr/bin/env bash

. .env

EXPRESS_PORT=${EXPRESS_PORT:-3000}

docker rm -vf ${APP_NAME}

docker run -d --name=${APP_NAME} \
    -e DOCKER_HOST=$(hostname) \
    -e ACC_SCHEDULE_URL=${ACC_SCHEDULE_URL} \
    -e EXPRESS_PORT=${EXPRESS_PORT} \
    -p 8000:${EXPRESS_PORT} \
    ${APP_NAME}