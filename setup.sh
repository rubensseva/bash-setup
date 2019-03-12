#!/bin/sh

sudo apt update
sudo apt --assume-yes upgrade

# Install essentials
sudo apt --assume-yes install apt-transport-https
sudo apt --assume-yes install git
sudo apt --assume-yes install vim
sudo apt --assume-yes install curl
sudo apt --assume-yes install wget
sudo apt --assume-yes install tmux
sudo apt --assume-yes install thunderbird

# Make tmux not wait forever when going to normal mode in vim
# Vim is completely useless when running in tmux without this
sudo cat "set -sg escape-time 0" >> ~/.tmux.conf

# Install zsh and oh-my-zsh
sudo apt --assume-yes install zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fzf
# Probably needs to be done before vim config file is used
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install

# Install neovim
# NOTE: if vim-plug doesnt work, this might be because of some permissions with nvim's autoload folder.
sudo apt --assume-yes install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt --assume-yes install neovim
sudo apt --assume-yes install python-dev python-pip python3-dev python3-pip

# Make config file and directory and get custom nvim config file
echo "Installing neovim"
sudo mkdir ~/.config/nvim
sudo touch ~/.config/nvim/init.vim
echo "curl'ing custom nvim config"
sudo curl https://raw.githubusercontent.com/rubensseva/vim_configs/master/init.vim > ~/.config/nvim/init.vim
# Install vim-plug for neovim
echo "curl'ing neovim"
# Download and set custom nvim config file
sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nodejs
echo "curl'ing nodejs"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo sudo apt --assume-yes install -y nodejs

# Install vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Install chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb


# This crashed on last setup, so commenting out
# Install sublime
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get install sublime-text






