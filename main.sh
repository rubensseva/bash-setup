#!/bin/bash

printf "\n\n"
echo "This is an install script for setting up my personal ideal ubuntu environment."
echo "The auhtor is not particurarly experienced so please do not rely on this script for anything at all."
printf "\n"
echo "Most of the scripts depend on the first scripts, essentials (mostly git, curl and wget)."
echo "For neovim setup to run optimally, please create a gnome terminal profile and set it as default. Then you will be able to install gnome terminal colorschemes, which will make vim behave nicely if you use the same colorscheme in vim. (recommend gruvbox as it is set in the neovim config)."
echo "Please make sure you are running this from bash-setup folder."
printf "\n"
read -p "Run main installer? This runs an update, then you will be prompted at each step y/n " firstchoice
if [ $firstchoice == "y" ]
then



sudo apt -y update && sudo apt -y upgrade

read -p "Install essentials? curl, tmux, vim etc. y/n " choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash ./essentials-setup.sh
else 
  echo "Skipping essentials"
fi
echo "Done"


read -p "Install large essentials? node, java etc. y/n " choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash ./large-essentials-setup.sh
else 
  echo "Skipping large essentials"
fi
echo "Done"


read -p "Setup neovim with plugins and custom neovim config file? y/n " choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash ./vim-setup.sh
else 
  echo "Skipping neovim"
fi
echo "Done"



read -p "Install large programs? thunderbird, vscode, intellij etc. y/n " choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash ./large-programs-setup.sh
else 
  echo "Skipping large programs"
fi
echo "Done"


echo "Run last setup? Other scripts should be installed first. Contains zsh, oh-my-zsh, fzf etc."
echo "NOTE: when oh-my-zsh has finished, simply type exit to resume installation"
read -p "Install? y/n " choice
if [ $choice == "y" ]
then
  echo "Installing"
  bash ./last-setup.sh
else 
  echo "Skipping last setup"
fi
echo "Done"



else
  echo "Exiting without making changes"
fi
echo "Main installer complete"
