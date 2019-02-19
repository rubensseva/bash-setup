#!/bin/sh

apt-get update
apt-get --assume-yes upgrade

# Install essentials
apt-get --assume-yes install git
apt-get --assume-yes install vim
apt-get --assume-yes install curl
apt-get --assume-yes install wget
apt-get --assume-yes install thunderbird

# Install neovim
apt-get --assume-yes install software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get --assume-yes install neovim
apt-get --assume-yes install python-dev python-pip python3-dev python3-pip

# Make config file and directory and get custom nvim config file
echo "Installing neovim"
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "curl'ing custom nvim config"
curl https://raw.githubusercontent.com/rubensseva/vim_configs/master/init.vim > ~/.config/nvim/init.vim
# Install vim-plug for neovim
echo "curl'ing neovim"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nodejs
echo "curl'ing nodejs"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get --assume-yes install -y nodejs
