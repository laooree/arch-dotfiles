#!/bin/sh
# env vars to set on login, zsh settings in ~/config/zsh/.zshrc

# default programs
export EDITOR="vi"
export TERM="kitty"
export TERMINAL="kitty"
export BROWSER="firefox"
# export BROWSER2="librewolf"

# XDG config
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XPROFILE="$XDG_CONFIG_HOME/x11/xprofile"
export XRESOURCES="$XDG_CONFIG_HOME/x11/xresources"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/.zcompdump"

# history
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"

# xdg data
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
