#!/bin/bash

# Dotfiles location
DOTS="$HOME/repos/dotfiles"

# ----------------------------- Install packages ----------------------------- #

sudo pacman -S - <packages/pacman-packages.txt

cd $HOME

# Install antigen for zsh
curl -L git.io/antigen >antigen.zsh

# Make zsh default
chsh -s $(which zsh)

# Install base16 for colors
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Set auto timezone
timedatectl set-ntp true

# ------------------------------ Symbolic links ------------------------------ #

echo "Setting up symlinks"

ln -sfnv $DOTS/.scripts $HOME
ln -sfnv $DOTS/picom $HOME/.config
ln -sfnv $DOTS/i3 $HOME/.config
ln -sfnv $DOTS/kitty $HOME/.config
ln -sfnv $DOTS/ranger $HOME/.config
ln -sfnv $DOTS/rofi $HOME/.config
ln -sfnv $DOTS/zathura $HOME/.config
ln -sfnv $DOTS/.zshrc $HOME
ln -sfnv $DOTS/.profile $HOME
ln -sfnv $DOTS/qutebrowser $HOME/.config
ln -sfnv $DOTS/polybar $HOME/.config
