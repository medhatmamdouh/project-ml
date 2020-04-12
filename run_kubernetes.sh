#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=medhat16/predict

# Step 2
# Run the Docker Hub container with kubernetes

kubectl run predict --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces


# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/predict  8080:8080 
#kubectl expose deployment predict --type=LoadBalancer --port=8080:80
