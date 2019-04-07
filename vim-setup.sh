#!/bin/bash

# Install nodejs
echo "curl nodejs"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo sudo apt --assume-yes install -y nodejs

# Install ternjs
sudo npm install -g tern
# Install npm neovim
sudo npm install -g neovim


# Install neovim
# NOTE: if vim-plug doesnt work, this might be because of some permissions with nvim's autoload folder.
sudo apt --assume-yes install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt --assume-yes install neovim
sudo apt --assume-yes install python-dev python-pip python3-dev python3-pip

# Make config file and directory and get custom nvim config file
echo "Installing neovim"
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "curl custom nvim config"
sudo curl https://raw.githubusercontent.com/rubensseva/vim_configs/master/init.vim > ~/.config/nvim/init.vim
# Install vim-plug for neovim
sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nerdfonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Ubuntu.zip
unzip Ubuntu.zip -d ~/.fonts
rm Ubuntu.zip
fc-cache -fv

# Get colorschemes for gnome terminal
# Doing this here since they are important for vim colorschemes 
# to work properly in terminal
read -p "Would you like to install GNOME terminal colorschemes? y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash -c  "$(wget -qO- https://git.io/vQgMr)"
else 
  echo "Skipping GNOME terminal colorschemes"
fi
echo "done"
