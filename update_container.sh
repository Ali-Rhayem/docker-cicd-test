#!/bin/bash

# The name of your container
CONTAINER_NAME="docker-cicd-test"

# Your Docker Hub repository
IMAGE_NAME="alirhayem/docker-cicd-test:latest"

# Pull the latest image
docker pull $IMAGE_NAME

# Stop the existing container
docker stop $CONTAINER_NAME || true

# Remove the existing container
docker rm $CONTAINER_NAME || true

# Run the new container
docker run -d -p 8000:8000 --name $CONTAINER_NAME $IMAGE_NAME
