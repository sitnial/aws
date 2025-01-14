#!/bin/bash

echo "Stopping application..."
APP_NAME="aws-0.0.1-SNAPSHOT"

# Find the process and kill it
PID=$(ps -ef | grep "$APP_NAME" | grep -v "grep" | awk '{print $2}')
if [ -n "$PID" ]; then
    echo "Stopping process $PID..."
    kill -9 "$PID"
    echo "Application stopped."
else
    echo "No running application found."
fi