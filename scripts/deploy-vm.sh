#!/bin/bash

set -e

echo "Starting deployment to VM..."

# Load environment variables
source .env

# Pull latest images
docker-compose pull

# Stop and remove existing containers
docker-compose down

# Start new containers
docker-compose up -d

# Copy frontend build to Nginx directory
docker cp frontend:/usr/share/nginx/html/. ${VM_DEPLOY_PATH}/

# Set correct permissions
sudo chown -R www-data:www-data ${VM_DEPLOY_PATH}
sudo chmod -R 755 ${VM_DEPLOY_PATH}

# Reload Nginx
sudo nginx -t && sudo systemctl reload nginx

echo "Deployment completed successfully!"