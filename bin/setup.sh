#!/bin/bash

echo "****************************************"
echo " Setting up Node Project Environment"
echo "****************************************"

echo "Updating system packages..."
sudo apt-get update -y

echo "Installing NVM (Node Version Manager)..."
export NVM_DIR="$HOME/.nvm"
if [ ! -d "$NVM_DIR" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

echo "Installing Node.js v22.16.0 via nvm..."
nvm install 22.16.0
nvm use 22.16.0
nvm alias default 22.16.0

echo "Checking installed versions..."
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

echo "Installing global CLI tools..."
npm install -g @nestjs/cli

if [ -d "backend" ]; then
  echo "Installing backend dependencies (NestJS)..."
  cd backend
  npm install
  cd ..
else
  echo "Warning: 'backend' directory not found. Skipping backend setup."
fi

if [ -d "frontend" ]; then
  echo "Installing frontend dependencies (React)..."
  cd frontend
  npm install
  cd ..
else
  echo "Warning: 'frontend' directory not found. Skipping frontend setup."
fi

echo "****************************************"
echo " Node Project Environment Setup Complete"
echo "****************************************"
echo ""
echo "You can now run your applications."
echo ""
