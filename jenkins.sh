#!/bin/bash

#This script need docker running in the system
#This script install jenkins using Docker and volume mount to save it's data and take from docker socket volume to tun docker command in pipe line

docker run -p 8080:8080 -p 50000:50000 -d \                                                                                                                                               ✔ 
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker jenkins/jenkins:lts-jdk11
