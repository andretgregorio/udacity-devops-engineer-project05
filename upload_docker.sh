#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=542498/personal
image=udacity-devops-project05

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username 542498
docker tag $image $dockerpath:1.0.0

# Step 3:
# Push image to a docker repository
docker push $dockerpath
