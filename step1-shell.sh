#!/bin/bash

# basic necessities
sudo apt -y install software-properties-common apt-transport-https curl wget
sudo apt -y install git vim htop
sudo update-alternatives --config editor

# Terminator
sudo add-apt-repository universe
sudo apt update
sudo apt -y install terminator

# ZSH
sudo apt -y install zsh

# Oh My ZSH
cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Powerline fonts
sudo apt -y install powerline fonts-powerline

# ZSH Powerlevel9k theme
sudo apt -y install zsh-theme-powerlevel9k
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

# Syntax Highlighting
sudo apt -y install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
