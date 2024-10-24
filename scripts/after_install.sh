#!/bin/bash
# Navigate to the application directory
cd /home/ubuntu/CalmNest
# Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate
# Install Python dependencies
pip install -r requirements.txt
