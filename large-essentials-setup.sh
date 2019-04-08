#!/bin/bash

# Install nodejs
echo "curl nodejs"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt --assume-yes install nodejs

# Install java 11
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt update
sudo apt install -y oracle-java11-installer
sudo apt install oracle-java11-set-default
