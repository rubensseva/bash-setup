#!/bin/bash

# Install nodejs
echo "curl nodejs"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt --assume-yes install nodejs

# Install java 11
sudo add-apt-repositor -y ppa:linux
sudo apt update
sudo apt install -y oracle-java11-installeruprising/java
sudo apt install oracle-java11-set-default
