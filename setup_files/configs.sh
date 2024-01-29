#!/bin/bash


cp ~/Makefiles/.configFiles/.clang-format ~

rm -rf ~/.config/fish

git clone https://github.com/vitrobiani/nvim-setup ~/.config/nvim
git clone https://github.com/vitrobiani/fish-setup ~/.config/fish

sudo chsh -s /usr/bin/fish
