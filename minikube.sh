#!/bin/bash

# Install required packages
sudo apt-get update
sudo apt-get install curl virtualbox virtualbox-ext-pack -y

# Download and install Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube /usr/local/bin/

# Start Minikube
minikube start

