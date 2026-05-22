#!/bin/bash

echo "Stopping old container..."
sudo docker stop devops-web || true

echo "Removing old container..."
sudo docker rm devops-web || true

echo "Building new image..."
sudo docker build -t devops-web .

echo "Starting new container..."
sudo docker run -d \
--name devops-web \
-p 8090:80 \
devops-web

echo "Deployment Finished"
