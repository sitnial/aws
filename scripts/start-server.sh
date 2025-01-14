#!/bin/bash

echo "Starting application..."
JAR_FILE="/home/ec2-user/app/aws-0.0.1-SNAPSHOT.jar"
LOG_FILE="/home/ec2-user/app/application.log"

if [ -f "$JAR_FILE" ]; then
    nohup java -jar "$JAR_FILE" > "$LOG_FILE" 2>&1 &
    echo "Application started successfully."
else
    echo "JAR file not found: $JAR_FILE"
    exit 1
fi