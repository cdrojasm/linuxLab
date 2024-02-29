#! /bin/bash

source ./.env set

echo "installing container"
echo "$CONTAINER_NAME"
echo "$VOLUME_PATH_HOST"
echo "$VOLUME_PATH_CONTAINER"
echo "$IMAGE_CONTAINER"

docker build --no-cache . -t $IMAGE_CONTAINER
if [ $? -eq 0 ];then
	echo "image was created successfully"
else
	echo "image was not created PANICCCC!!!"
	exit 1
fi
docker run -dt --name $CONTAINER_NAME -v $VOLUME_PATH_HOST:$VOLUME_PATH_CONTAINER $IMAGE_CONTAINER
