#!/bin/bash

# There have been some issues with these installaions, consider doing them outside of script

# Install zsh and oh-my-zsh
sudo apt --assume-yes install zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chmod 777 ./.zshrc
sudo chmod 777 ./.zsh_history
# Change default shell
# This MUST be run without sudo!
chsh -s $(which zsh)

# Install fzf
# Probably needs to be done before vim config file is used
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install

sudo echo "export EDITOR=nvim" >> ~/.zshrc
sudo echo "alias vim=nvim" >> ~/.zshrc
sudo echo "alias vi=nvim" >> ~/.zshrc
