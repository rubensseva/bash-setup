#!/bin/sh

sudo apt-get update
sudo apt-get --assume-yes upgrade

# Install essentials
sudo apt-get --assume-yes install git
sudo apt-get --assume-yes install vim
sudo apt-get --assume-yes install curl
sudo apt-get --assume-yes install wget
sudo apt-get --assume-yes install thunderbird

# Install fzf
# Probably needs to be done before vim config file is used
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install

# Install neovim
# NOTE: if vim-plug doesnt work, this might be because of some permissions with nvim's autoload folder.
sudo apt-get --assume-yes install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get --assume-yes install neovim
sudo apt-get --assume-yes install python-dev python-pip python3-dev python3-pip

# Make config file and directory and get custom nvim config file
echo "Installing neovim"
sudo mkdir ~/.config/nvim
sudo touch ~/.config/nvim/init.vim
echo "curl'ing custom nvim config"
sudo curl https://raw.githubusercontent.com/rubensseva/vim_configs/master/init.vim > ~/.config/nvim/init.vim
# Install vim-plug for neovim
echo "curl'ing neovim"
sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nodejs
echo "curl'ing nodejs"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo sudo apt-get --assume-yes install -y nodejs

# Install zsh and oh-my-zsh
sudo apt-get --assume-yes install zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


