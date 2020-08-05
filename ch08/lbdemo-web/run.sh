#!/usr/bin/env bash

APP_NAME=lbdemo-web

docker build -t ${APP_NAME} .

docker rm -vf ${APP_NAME}

docker run -d --name=${APP_NAME} \
    -e DOCKER_HOST=$(hostname) \
    -p 8000:5000 \
    -v ${PWD}:/app \
    ${APP_NAME}