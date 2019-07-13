#!/bin/bash

# Install packages from a file, and remove all the comments inside!
sudo apt install $(grep -vE "^\s*#" apt-packages.txt | tr "\n" " ")

# Dotfiles location
DOTS="$HOME/repos/dotfiles"

# Initial setup of folders, repo and symlinks!
if [ $already_setup == true ]; then
	echo "Setting up repos directories"

	cd $HOME
	rm -rf .scripts .zshrc .vimrc
	cd .config
	rm -rf i3 i3blocks rofi .vim zathura compton

	cd $HOME
	mkdir -p repos

	cd repos
	echo "Cloning repo..."
	git clone https://github.com/stavrosfil/dotfiles

	# Symbolic links!
	ln -sv $DOTS/.scripts $HOME/
	ln -sv $DOTS/compton $HOME/.config/
	ln -sv $DOTS/i3 $HOME/.config/
	ln -sv $DOTS/i3blocks $HOME/.config/
	ln -sv $DOTS/rofi $HOME/.config/
	ln -sv $DOTS/vim/.vim $HOME/.config/
	ln -sv $DOTS/vim/.vimrc $HOME/
	ln -sv $DOTS/zathura $HOME/.config/
	ln -sv $DOTS/.zshrc $HOME/
fi

cd $DOTS
git pull

echo $PWD

echo "Hello world!"