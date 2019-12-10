#!/bin/bash

# basic necessities
sudo apt -y install software-properties-common apt-transport-https curl wget
sudo apt -y install git vim htop
sudo update-alternatives --config editor

# Terminator
sudo add-apt-repository ppa:gnome-terminator
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
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists

fc-cache -vf ~/.fonts/

mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh --scheme=dark --install-dircolors=true

# after above installation, edit ~/.zshrc to set ZSH_THEME="agnoster" and add line: eval `dircolors ~/.dir_colors/dircolors`
echo "edit ~/.zshrc and set the following:"
echo "ZSH_THEME=\"agnoster\""
echo "eval `dircolors ~/.dir_colors/dircolors`"
vim ~/.zshrc

# Syntax Highlighting
sudo apt -y install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
