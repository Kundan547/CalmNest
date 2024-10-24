#!/bin/bash
# Add a delay to ensure the application has time to start
sleep 5

# Check if the application is running
if pgrep -f "gunicorn" > /dev/null; then
    echo "Application is running."
    exit 0
else
    echo "Application is not running!"
    exit 1
fi


