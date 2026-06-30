#!/bin/bash

echo "========================================"
echo "Installing Project Dependencies"
echo "========================================"

sudo apt update -y

echo "Installing Git..."
sudo apt install git -y

echo "Installing Python..."
sudo apt install python3 python3-pip python3-venv -y

echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo bash -
sudo apt install nodejs -y

echo "Installing PM2..."
sudo npm install -g pm2

echo "========================================"
echo "Installation Completed Successfully"
echo "========================================"