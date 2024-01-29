#!/bin/bash

cd ~

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d .config ]]; then
    mkdir .config
fi

cd setup_files
sleep 2
./installs.sh
sleep 3
./neovim_build.sh
sleep 3
./configs.sh
sleep 3
./ohMyTmux.sh
sleep 3

sleep 5
cowsay "all finished\!"

