#!/usr/bin/dash

cd ~/dotfiles

stow -v i3
stow -v zsh
stow -v shell-aliases
stow -v kitty
stow -v qutebrowser
stow -v rofi
sudo stow -vt / xorg
