#!/bin/bash

echo "========================================"
echo "Deploying Flask Application"
echo "========================================"

cd ~/cicd-flask-express-jenkins-assignment/part1-deployment/flask-app

python3 -m venv venv

source venv/bin/activate

pip install -r requirements.txt

deactivate

echo "========================================"
echo "Flask Deployment Completed"
echo "========================================"