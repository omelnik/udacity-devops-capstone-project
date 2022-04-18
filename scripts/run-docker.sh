#!/usr/bin/env bash

IMAGE=fastapi-app

# Step 1: Build image and add a descriptive tag
docker build --tag=$IMAGE .

# Step 2: List docker images
docker image ls

# Step 3: Run flask app
docker run -p 80:80 $IMAGE