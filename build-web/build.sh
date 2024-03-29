#!/bin/bash

APP_NAME="cook-web"
APP_VERSION="1.0.3"
TMP_DIR="./tmp"
DOCKER_IMAGE="ivorobioff/$APP_NAME:$APP_VERSION"

rm -rf $TMP_DIR && mkdir $TMP_DIR

git clone git@github.com:ivorobioff/$APP_NAME.git $TMP_DIR/$APP_NAME

docker build -t $DOCKER_IMAGE .
docker push $DOCKER_IMAGE
