#!/bin/bash

APP_VERSION="0.0.2"
WEB_VERSION="0.1.2"

mkdir -p ~/.cook/db

docker network create cook-net

docker run --name=cook-mongo -v ~/.cook/db:/data/db --network=cook-net -d mongo

docker run --name=cook-app -p 8082:8080 --network=cook-net --env-file ./.env -d ivorobioff/cook-app:$APP_VERSION
docker run --name=cook-web -p 4202:4200 --network=cook-net -d ivorobioff/cook-web:$WEB_VERSION

docker cp ./env.js cook-web:/src/cook-web/build/

echo 'Installed!';
