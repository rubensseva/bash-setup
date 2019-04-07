#!/bin/sh

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
