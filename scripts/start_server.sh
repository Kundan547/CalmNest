#!/bin/bash
# Navigate to the application directory
cd /home/ubuntu/CalmNest
# Activate the virtual environment
source venv/bin/activate
# Start the Flask app using Gunicorn
gunicorn --bind 0.0.0.0:5000 app:app &
