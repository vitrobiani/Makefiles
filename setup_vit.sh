#!/bin/bash

cd ~

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d .config ]]; then
    mkdir .config
fi

cd ~/Makefiles/setup_files
sudo ./installs.sh
sleep 3
sudo ./neovim_build.sh
sleep 3
sudo ./configs.sh
sleep 3
sudo ./ohMyTmux.sh
sleep 3

sudo chsh -s /usr/bin/fish

sleep 5
cowsay "all finished\!"

