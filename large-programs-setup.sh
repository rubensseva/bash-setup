#!/bin/bash

# Install thunderbird
sudo apt --assume-yes install thunderbird

# Install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb

# Install vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt --assume-yes install code

# Install sublime 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt --assume-yes install sublime-text

# Install intellij
read -p "Would you like to install intellij? y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"
  wget https://download.jetbrains.com/idea/ideaIC-2019.1-jbr11.tar.gz
  sudo tar -C /opt/ -xvzf ideaIC-2019.1-jbr11.tar.gz
  /opt/idea-IC-191.6183.87/bin/idea.sh
  rm ideaIC-2019.1-jbr11.tar.gz
else 
  echo "Skipping intellij"
fi
echo "done"

# Install slack
read -p "Slack? y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"
  wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
  sudo apt --assume-yes install ./slack-desktop-3.3.8-amd64.deb
else 
  echo "Skipping slack"
fi
echo "done"

# Install Discord
read -p "Discord? y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"
  sudo apt update
  sudo apt --assume-yes install gdebi-core wget
  wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
  sudo gdebi ~/discord.deb 
else 
  echo "Skipping discord"
fi
echo "done"
