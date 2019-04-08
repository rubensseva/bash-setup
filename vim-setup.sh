#!/bin/bash

# Install ternjs
sudo npm install -g tern
# Install npm neovim
sudo npm install -g neovim

# Install neovim
# NOTE: if vim-plug doesnt work, this might be because of some permissions with nvim's autoload folder.
sudo apt --assume-yes install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update
sudo apt --assume-yes install neovim
sudo apt --assume-yes install python-dev python-pip python3-dev python3-pip
sudo pip install pynvim
sudo pip3 install pynvim

# Make config file and directory and get custom nvim config file
echo "Installing neovim"
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "curl custom nvim config"
curl https://raw.githubusercontent.com/rubensseva/vim_configs/master/init.vim > ~/.config/nvim/init.vim
# Install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nerdfonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Ubuntu.zip
unzip Ubuntu.zip -d ~/.fonts
rm Ubuntu.zip
fc-cache -fv

# Get colorschemes for gnome terminal
# Doing this in this script bacause they are important for vim colorschemes 
# to work properly in terminal
read -p "Would you like to install GNOME terminal colorschemes? (make sure you create a gnome terminal profile before this. Recommend installing gruvbox) y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash -c  "$(wget -qO- https://git.io/vQgMr)"
else 
  echo "Skipping GNOME terminal colorschemes"
fi
echo "done"
