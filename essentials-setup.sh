#!/bin/bash

sudo apt update
sudo apt --assume-yes upgrade

# Install essentials
sudo apt --assume-yes install apt-transport-https
sudo apt --assume-yes install git
sudo apt --assume-yes install vim
sudo apt --assume-yes install curl
sudo apt --assume-yes install wget
sudo apt --assume-yes install tmux
sudo apt --assume-yes install xclip

# Make tmux not wait forever when going to normal mode in vim
# Vim is completely useless when running in tmux without this
echo "set -sg escape-time 0" >> ~/.tmux.conf
