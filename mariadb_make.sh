#!/bin/bash

CONTAINER_NAME=mariadb
DOCKER_NAMES=mariadb_server

read -p "Do you wish to install this $CONTAINER_NAME ? (y/n)" yn
if [ $yn = "y" ] 
then

    echo ""
    echo "Step 1. docker image make and run container."
    docker-compose -f docker-compose.yml up -d
    echo ""
    echo "$CONTAINER_NAME docker run complete!"
    echo ""
    echo "Step 2. base docker hub $CONTAINER_NAME image remove."
    docker rmi $CONTAINER_NAME
    echo "base docker hub $CONTAINER_NAME image remove OK!! good luck!"
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
    docker ps --no-trunc |grep $CONTAINER_NAME
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
    read -p "Do you want connect in $CONTAINER_NAME ? (y/n)" yn
    if [ $yn = "y" ] 
    then 
        docker exec -it $DOCKER_NAMES /bin/bash
    else
        echo "good bye~"
    fi

else
    echo "this job has been stopped..."
fi