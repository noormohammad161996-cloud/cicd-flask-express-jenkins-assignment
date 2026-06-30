#!/bin/bash

echo "========================================"
echo "Starting Flask Application"
echo "========================================"

cd ~/cicd-flask-express-jenkins-assignment/part1-deployment/flask-app

pm2 delete flask-app 2>/dev/null

pm2 start venv/bin/python --name flask-app -- app.py

echo "========================================"
echo "Starting Express Application"
echo "========================================"

cd ~/cicd-flask-express-jenkins-assignment/part1-deployment/express-app

pm2 delete express-app 2>/dev/null

pm2 start app.js --name express-app

pm2 save

echo "========================================"
echo "Applications Started Successfully"
echo "========================================"

pm2 list