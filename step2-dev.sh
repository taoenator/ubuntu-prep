#!/bin/bash

# Python 3 is built into Ubuntu 21.04
sudo apt -y install python3-pip
sudo apt -y install python3-git
sudo pip3 install pipenv

# Docker
sudo apt -y install docker.io
sudo systemctl enable --now docker
sudo systemctl status docker
docker --version

sudo groupadd docker
sudo usermod -aG docker ${USER}

echo "Docker setup completed.  You must log out and log back in for settings to take effect."

# VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code
