#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=374000545310.dkr.ecr.us-east-1.amazonaws.com/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f test_deployment_app.yaml

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl apply -f service_deployment.yaml

