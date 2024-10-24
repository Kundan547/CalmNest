#!/bin/bash
# Navigate to the application directory
cd /home/ec2-user/CalmNest
# Start the Flask app with Gunicorn for production
gunicorn --bind 0.0.0.0:5000 app:app &

