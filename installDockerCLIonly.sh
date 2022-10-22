#!/bin/bash

echo
echo
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------
echo INSTALLING DOCKER CLI
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------
echo
echo
sleep 2
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list 

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo 
echo
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------
echo DOCKER CLI INSTALLED!
echo ----------------------------------------------------------------------------------------------------------------------------------------------------------
echo
echo
sleep 5
