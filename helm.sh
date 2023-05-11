#!/bin/bash

# Add the official Helm GPG key
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Install Helm
sudo apt-get update && sudo apt-get install helm