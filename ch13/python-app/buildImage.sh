#!/usr/bin/env bash

. .env

docker build -t ${APP_NAME} --build-arg CREDENTIALS_WALLET=${CREDENTIALS_WALLET} .