#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
docker tag cuong_project4:latest 504395544721.dkr.ecr.us-east-1.amazonaws.com/cuong_project4:latest
dockerpath=504395544721.dkr.ecr.us-east-1.amazonaws.com
# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath/cuong_project4:latest
