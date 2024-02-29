#!/bin/bash

source ./.env set

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker image rm $CONTAINER_IMAGE
docker image rm $BASE_IMAGE

