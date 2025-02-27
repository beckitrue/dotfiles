#!/bin/bash

# Install the required packages
sudo apt update -y
sudo apt install fd-find -y
sudo apt install bat -y
mkdir -p ~/.local/bin
cd ~/.local/bin
ln -s $(which fdfind) fd
ln -s $(which batcat) bat
go install github.com/jesseduffield/lazygit@latest
curl https://fx.wtf/install.sh | sh

# Use stow to create symlinks
mkdir ~/.config
cd ~/dotfiles
stow --target ~/.config . -v

# Comment out the obsidian line in init.lua
sed -i "s/^require('plugins.obsidian')/-- require('plugins.obsidian')/g" ~/.config/nvim/init.lua

# Change the default shell to zsh
chsh -s $(which zsh)
