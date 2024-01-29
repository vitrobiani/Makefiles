#!/bin/bash

# Define a function to handle errors
handle_error() {
    echo "An error occurred in the script"
}

# Set up the trap to call the error handling function
trap 'handle_error' ERR

cd ~

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d .config ]]; then
    mkdir .config
fi

cd setup_files
if [ $? -eq 0 ]; then
    echo "setup_files succeeded"
else
    echo "setup_files failed"
fi
sleep 2
./installs.sh
if [ $? -eq 0 ]; then
    echo "installs succeeded"
else
    echo "installs failed"
fi
sleep 3
./neovim_build.sh
if [ $? -eq 0 ]; then
    echo "neovim build succeeded"
else
    echo "neovim build failed"
fi
sleep 3
./configs.sh
if [ $? -eq 0 ]; then
    echo "configs succeeded"
else
    echo "configs failed"
fi
sleep 3
./ohMyTmux.sh
if [ $? -eq 0 ]; then
    echo "tmux succeeded"
else
    echo "tmux failed"
fi
sleep 3

sleep 5
cowsay "all finished\!"

