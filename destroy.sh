#!/bin/bash

docker container rm -f cook-mongo
docker container rm -f cook-web
docker container rm -f cook-app
docker network rm cook-net

echo 'Destroyed!';