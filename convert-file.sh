#!/bin/sh

#Update the packages
sudo apt-get update
sudo apt upgrade

#Install prerequisite packages (ZSH, powerline & powerline fonts)
sudo apt install zsh
sudo apt-get install powerline fonts-powerline

#Clone the Oh My Zsh Repo
git clone https://github.com/ahmedeldaly097/ohmyzsh.git ~/.oh-my-zsh

#Create a New ZSH configuration file
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

#Install PowerLevel9k!
git clone https://github.com/ahmedeldaly097/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#Set up a theme for your Terminal
cat .oh-my-zsh/choose-theme.txt > .zshrc

#Change your Default Shell
chsh -s /bin/zsh

#rebooting your system
reboot
