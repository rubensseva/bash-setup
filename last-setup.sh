#!/bin/bash

# There have been some issues with these installaions, consider doing them outside of script

read -p "WARNING this is a volatile script with issues, it is preferred to install these manually. Proceed anyways? y/n" choice
if [ $choice == "y" ]
then
  echo "Installing"

  # Install zsh and oh-my-zsh
  sudo apt --assume-yes install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  # Change default shell
  # This MUST be run without sudo!
  chsh -s $(which zsh)

  # Install fzf
  # Probably needs to be done before vim config file is used
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install

  sudo echo "export EDITOR=nvim" >> ~/.zshrc
  sudo echo "alias vim=nvim" >> ~/.zshrc
  sudo echo "alias vi=nvim" >> ~/.zshrc

  read -p "Install i3? y/n " ichoice
  if [ $ichoice == "y" ]
  then
    echo "Installing"
    sudo apt install i3
  else 
    echo "Skipping i3"
  fi
  echo "Done"

else 
  echo "Skipping last setup"
fi
echo "done"

