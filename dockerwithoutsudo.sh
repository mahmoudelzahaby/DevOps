#!/bin/bash

#Update package manager
sudo apt update

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add current user to the docker group
sudo usermod -aG docker $USER

# Restart Docker daemon
sudo systemctl restart docker

