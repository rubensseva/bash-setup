#!/bin/sh


sudo apt --assume-yes install thunderbird

# Install nodejs
echo "curl'ing nodejs"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo sudo apt --assume-yes install -y nodejs

# Install vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb
