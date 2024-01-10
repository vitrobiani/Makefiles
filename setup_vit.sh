#!/bin/bash

cd ~

if [[ ! -d .config ]]; then
    mkdir .config
fi

sudo apt install git -y

#tools
sudo apt install gcc clang cmake -y
sudo apt-get install ninja-build gettext cmake unzip curl -y

#put this in powersell to sync clipboards
#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
#scoop install win32yank

#install neovim
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ~
cd .config

#setups
git clone https://github.com/vitrobiani/nvim-setup nvim
git clone https://github.com/vitrobiani/fish-setup fish

sudo apt install fish
chsh -s /usr/bin/fish



