#!/bin/bash

cd ~

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d .config ]]; then
    mkdir .config
fi

cd ~/Makefiles/setup_files

./installs.sh
./neovim_build.sh
./configs.sh
./ohMyTmux.sh

sudo chsh -s /usr/bin/fish

echo "all finished\!" | cowsay

