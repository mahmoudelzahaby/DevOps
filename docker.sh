#!/bin/bash

# Update the package list and install dependencies
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

# Add the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package list again
sudo apt-get update

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Verify that Docker is installed and running
sudo docker run hello-world

