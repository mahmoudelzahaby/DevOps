#!/bin/bash

# Check available space
space=$(df -h / | awk 'NR==2 {print $4}')
echo "Available space: $space"

# Remove old package cache files
echo "Removing old package cache files..."
sudo apt-get autoclean

# Remove old log files
echo "Removing old log files..."
sudo find /var/log -type f -name "*.gz" -delete

# Remove old crash reports
echo "Removing old crash reports..."
sudo find /var/crash -type f -mtime +7 -delete

# Remove old temporary files
echo "Removing old temporary files..."
sudo find /tmp -type f -mtime +1 -delete

echo "Done."

