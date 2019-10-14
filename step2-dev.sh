#!/bin/bash

# Python 3.7
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt -y install python3.7
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 3

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce
sudo usermod -aG docker ${USER}

echo "Docker setup completed.  You must log out and log back in for settings to take effect."

# VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code
