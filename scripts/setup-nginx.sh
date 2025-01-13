#!/bin/bash

set -e

echo "Setting up Nginx..."

# Install Nginx if not present
if ! command -v nginx &> /dev/null; then
    sudo apt update
    sudo apt install -y nginx
fi

# Create Nginx directories if they don't exist
sudo mkdir -p /etc/nginx/sites-available
sudo mkdir -p /etc/nginx/sites-enabled

# Copy Nginx configurations
sudo cp nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp nginx/default.conf /etc/nginx/sites-available/default

# Create symlink if it doesn't exist
if [ ! -L /etc/nginx/sites-enabled/default ]; then
    sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
fi

# Test Nginx configuration
sudo nginx -t

# Restart Nginx
sudo systemctl restart nginx

echo "Nginx setup completed successfully!"