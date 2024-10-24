#!/bin/bash
# Navigate to the application directory
cd /home/ubuntu/CalmNest
# Activate the virtual environment
source venv/bin/activate
<<<<<<< HEAD
# Start the Flask app using Gunicorn
=======
# Start the Flask app with Gunicorn for production
>>>>>>> 12873b4d42bd5d1389b520fcd1f0aa3ad535ea07
gunicorn --bind 0.0.0.0:5000 app:app &
