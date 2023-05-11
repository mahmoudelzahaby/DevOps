#!/bin/bash

# Download the latest version of kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Make the kubectl binary executable
chmod +x kubectl

# Move the binary to a directory in your PATH
sudo mv kubectl /usr/local/bin/

