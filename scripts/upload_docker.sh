#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1: Create dockerpath
DOCKER_REPO=nikomel
DOCKER_IMAGE=fastapi-app
DOCKER_TAG=latest
DOCKER_PATH=$DOCKER_REPO/$DOCKER_IMAGE:$DOCKER_TAG

# Step 2: Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
docker login
docker tag $DOCKER_IMAGE:$DOCKER_TAG $DOCKER_PATH

# Step 3: Push image to a docker repository
docker push $DOCKER_PATH