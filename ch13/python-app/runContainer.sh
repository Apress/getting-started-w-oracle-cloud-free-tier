#!/usr/bin/env bash

. .env

docker rm -vf ${APP_NAME}

docker run -d --name=${APP_NAME} \
    -e DOCKER_HOST=$(hostname) \
    -p 8000:5000 \
    -v ${PWD}/app:/app:z \
    -v ${PWD}/db.properties:/etc/app/db.properties:z \
    ${APP_NAME}