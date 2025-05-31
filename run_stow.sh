#!/usr/bin/dash

cd ~/dotfiles

stow -v i3
stow -v zsh
stow -v shell-aliases
sudo stow -vt / xorg
