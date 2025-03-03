#!/bin/bash

# Ensure system is up to date
echo "Updating the system..."
sudo apt-get update && sudo apt-get upgrade -y

# Install global npm packages (if any)
echo "Installing global npm packages..."
npm install -g @nestjs/cli

# Install frontend dependencies (if any) and backend dependencies
echo "Setting up backend dependencies..."
cd /workspace/backend && npm install

echo "Setting up frontend dependencies..."
cd /workspace/frontend && npm install

echo "Development environment setup complete."
