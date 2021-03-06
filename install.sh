#!/bin/sh
cp vim/vimrc ~/.vimrc
cp zsh/zshrc ~/.zshrc
cp zsh/zprofile ~/.zprofile
cp xorg/xinitrc ~/.xinitrc
cp xorg/Xresources ~/.Xresources
cp tmux/tmux.conf ~/.tmux.conf
mkdir ~/.xmonad
cp xmonad/xmonad.hs ~/.xmonad/xmonad.hs
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
