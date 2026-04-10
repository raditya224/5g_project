#!/bin/bash

# List of components based on SDD Spec
COMPONENTS=(
    "open5gs" "grafana" "metrics" "osmohlr" "osmomsc" 
    "pyhss" "kamailio" "mysql" "opensips" "srslte" 
    "srsran" "ueransim" "eupf" "ocs" "osmoepdg" "swu_client"
)

SOURCE_REGISTRY="ghcr.io/herlesupreeth"
TAG="master"

echo "🚀 Starting 5G Core Image Deployment..."

for APP in "${COMPONENTS[@]}"; do
    IMAGE_FULL="$SOURCE_REGISTRY/docker_$APP:$TAG"
    LOCAL_NAME="docker_$APP"
    
    echo "--------------------------------------------"
    echo "📦 Processing: $APP"
    docker pull $IMAGE_FULL
    docker tag $IMAGE_FULL $LOCAL_NAME
    echo "✅ Tagged $LOCAL_NAME"
done

echo "--------------------------------------------"
echo "🎉 All images are ready for Docker Compose."