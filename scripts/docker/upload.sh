#!/usr/bin/env bash

# Step 1: Create dockerpath
DOCKER_REPO=792765111837.dkr.ecr.us-east-1.amazonaws.com
DOCKER_IMAGE=fastapi
DOCKER_TAG=latest
DOCKER_PATH=$DOCKER_REPO/$DOCKER_IMAGE:$DOCKER_TAG

# Step 2: Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $DOCKER_REPO
docker tag $DOCKER_IMAGE:$DOCKER_TAG $DOCKER_PATH

# Step 3: Push image to a docker repository
docker push $DOCKER_PATH