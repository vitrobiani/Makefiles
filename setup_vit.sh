#!/bin/bash

cd ~

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d .config ]]; then
    mkdir .config
fi

cd ~/Makefiles/setup_files
sudo bash installs.sh
sleep 5
sudo bash neovim_build.sh
sleep 5
sudo bash configs.sh
sleep 5
sudo bash ohMyTmux.sh
sleep 5

sudo chsh -s /usr/bin/fish

sleep 5
cowsay "all finished\!"

