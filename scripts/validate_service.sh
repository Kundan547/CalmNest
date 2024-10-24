#!/bin/bash
# Check if the application is running
if pgrep -f "gunicorn" > /dev/null; then
    echo "Application is running."
    exit 0
else
    echo "Application is not running!"
    exit 1
fi
