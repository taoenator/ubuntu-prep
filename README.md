# ubuntu-prep

Setting up Ubuntu with Tao's preferred environment.

## Pre-requisits

The following steps must be done manually before running the set-up scripts:
* Install Ubuntu, obviously
* Install Git: 'sudo apt install git'
* Set up ability to clone this repo: copy SSH key from your existing or creating a new one.

## Choose a branch
Depending on the OS version, use the appropriate branch.

## Run the scripts
Note: Be prepared to hit [Enter] or enter password.  After installing zsh, you are automatically logged into the zsh shell; Type 'exit' to resume execution of the script.

1. step1-shell.sh sets up essentials, and zsh shell and associated plug-ins
2. step2-dev.sh sets up development environments
3. step3-nvidia.sh sets up Docker to use native Nvidia GPUs

Run the following to verify the Docker-Nvidia setup.
```
docker run --gpus all nvidia/cuda:9.0-base nvidia-smi
```
