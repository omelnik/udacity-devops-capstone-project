#!/usr/bin/env bash

IMAGE=fastapi

# Step 3: Run flask app
docker run -p 80:80 $IMAGE