#!/bin/bash

mkdir -p ~/download
cd ~/download
echo ${hostname}
echo "Running apt update"
apt-get update
echo "Installing nginx"
apt-get install nginx -y
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install docker-ce