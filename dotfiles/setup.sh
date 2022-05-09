#!/bin/bash


link() {
  src="$(pwd)/$1"
  dst="$HOME/$1"
  rm -rf "$dst"
  ln -s "$src" "$dst"
}

link_config() {
  src="$(pwd)/.config/$1"
  dst="$HOME/.config/$1"
  rm -rf "$dst"
  ln -s "$src" "$dst"
}


link ".bashrc"
link ".clang-format"
link ".gitconfig"
link ".profile"
link ".vimrc"
link ".xinitrc"
link ".Xmodmap"
link ".xprofile"
link ".Xsession"
link ".zshrc"

link_config "alacritty"
link_config "environment.d"
link_config "fontconfig"
link_config "go"
link_config "i3"
link_config "i3status"
link_config "kitty"
link_config "picom"
link_config "polybar"
link_config "qtile"
link_config "ranger"
link_config "rofi"
link_config "sway"
link_config "waybar"

