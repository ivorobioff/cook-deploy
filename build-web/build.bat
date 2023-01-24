@echo off
set APP_NAME="cook-web"
set APP_VERSION="1.1.0"
set TMP_DIR="./tmp"
set DOCKER_IMAGE="ivorobioff/%APP_NAME%:%APP_VERSION%"

rd /s /q %TMP_DIR% 
mkdir %TMP_DIR%

git clone git@github.com:ivorobioff/%APP_NAME%.git %TMP_DIR%/%APP_NAME%

copy .\.npmrc %TMP_DIR%\%APP_NAME%

docker build -t %DOCKER_IMAGE% .
docker push %DOCKER_IMAGE%
