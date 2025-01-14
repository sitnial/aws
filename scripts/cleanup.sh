#!/bin/bash

echo "Cleaning up old deployments..."
DEPLOY_DIR="/home/ec2-user/app"
if [ -d "$DEPLOY_DIR" ]; then
    sudo rm -rf "$DEPLOY_DIR/*"
    echo "Old deployment files removed."
else
    echo "Deployment directory does not exist, skipping cleanup."
fi