#!/usr/bin/env bash

IMAGE=fastapi

# Step 1: Build image and add a descriptive tag
docker build --tag=$IMAGE .
# Step 2: List docker images
docker image ls