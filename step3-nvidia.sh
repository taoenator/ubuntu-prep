#!/bin/bash

# PRE-REQUISITS:
# Make sure you have installed the NVIDIA driver and Docker 19.03 for your Linux distribution.

# install nvidia docker toolkit
# Ref: https://github.com/NVIDIA/nvidia-docker
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit

sudo systemctl restart docker
