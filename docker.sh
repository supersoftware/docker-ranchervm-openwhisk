#!/bin/bash
set -e
set -x

# sudo apt-get purge lxc-docker
# sudo apt-get remove docker docker-engine

# sudo apt-get install -y linux-image-extra-4.4.0-81-generic linux-image-extra-virtual

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y

sudo apt-get install -y docker-ce

sudo service docker start
