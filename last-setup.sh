#!/bin/sh


# Install zsh and oh-my-zsh
sudo apt --assume-yes install zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fzf
# Probably needs to be done before vim config file is used
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install
