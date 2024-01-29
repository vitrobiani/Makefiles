#!/bin/bash

cd ~
#put this in powersell to sync clipboards
#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
#scoop install win32yank

#install neovim
git clone https://github.com/neovim/neovim
sleep 1
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sleep 1
sudo make install
sleep 1
cd Makefiles/setup_files
