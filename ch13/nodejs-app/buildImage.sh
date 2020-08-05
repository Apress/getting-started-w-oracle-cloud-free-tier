#!/usr/bin/env bash

. .env

if [[ -d app/build ]]; then rm -rf app/build; fi;
if [[ -d app/node_modules ]]; then rm -rf app/node_modules; fi;

docker build -t ${APP_NAME} .