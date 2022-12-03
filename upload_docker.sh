#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
docker tag image-project-4:latest 374000545310.dkr.ecr.us-east-1.amazonaws.com/project4:latest
dockerpath=374000545310.dkr.ecr.us-east-1.amazonaws.com
# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath/project4:latest
