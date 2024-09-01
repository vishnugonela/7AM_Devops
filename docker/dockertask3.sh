#!/bin/bash

# Number of containers to create
NUM_CONTAINERS=10

# Loop through and create containers
for ((i=1; i<=NUM_CONTAINERS; i++))

do
    CONTAINER_NAME="my_container_$i"

    # Check if the container exists
    if [ "$(docker ps -a -q -f name=^/${CONTAINER_NAME}$)" ];
        then
        echo "Container $CONTAINER_NAME exists. Deleting..."
        docker rm -f "$CONTAINER_NAME"
    fi

    # Create the container
    echo "Creating container $CONTAINER_NAME..."
    docker run -d --name "$CONTAINER_NAME"  nginx
done

echo "All containers have been created successfully."
