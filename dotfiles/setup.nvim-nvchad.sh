#!/bin/bash


git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth=1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

ln -s "$(pwd)/.config/nvim/lua/custom" "$HOME/.config/nvim/lua/custom"
