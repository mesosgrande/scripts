#!/bin/bash

LOCAL_STORAGE_DIR="/var/lib/registry"
CONTAINER_NAME="registry"


# stop and remove the existing container if exists
docker kill $CONTAINER_NAME
docker rm $CONTAINER_NAME

docker run \
-d \
-v $LOCAL_STORAGE_DIR:/registry \
-e SETTINGS_FLAVOR=local \
-e STORAGE_PATH=/registry \
-e SEARCH_BACKEND=sqlalchemy \
--net="host" \
--name "$CONTAINER_NAME" \
registry
