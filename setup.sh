#!/bin/bash

# Change to dotfiles
cd ~/etc/

# Link Configs

ln ~/etc/COMPTON/compton.conf ~/.config/compton.conf
ln ~/etc/I3/config ~/.i3/config # i3-gaps
ln ~/etc/XRESOURCES ~/.Xresources # Xresources (rofi, urxvt, etc.)
ln ~/etc/ZSH/zshrc ~/.zshrc # zsh (oh-my-zsh)
ln ~/etc/POLYBAR/polybar ~/.polybar # polybar
ln ~/etc/ALACRITTY/alacritty.yml ~/.config/alacritty/alacritty.yml # alacritty

# Neovim Config
git clone https://github.com/ajmwagar/vimkampf.git ~/.config/nvim
