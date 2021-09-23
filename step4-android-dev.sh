#!/bin/bash

# Android Studio
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt install android-studio

export ANDROID_SDK_ROOT=/home/tao/Android/Sdk/platforms/android-31
echo "export ANDROID_SDK_ROOT=/home/tao/Android/Sdk/platforms/android-31" >> ~/.zshrc

# Gradle
sudo add-apt-repository ppa:cwchien/gradle
sudo apt update
sudo apt -y install gradle
