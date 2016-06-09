#!/usr/bin/env sh

#
# install dotfile in home (~) folder
#

set -e

source ./functions.sh

current_directory=$PWD

if ask "Install symlink for .vimrc?" Y; then
  ln -s $current_directory/.vim ~/.vim
  ln -s $current_directory/.vimrc ~/.vimrc
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if ask "Install symlink for .tmux.conf?" Y; then
  ln -s $current_directory/.tmux.conf ~/.tmux.conf
fi

if ask "Install symlink for .Xresources?" Y; then
  ln -s $current_directory/.Xresources ~/.Xresources
fi

if ask "Install symlink for .yaourtrc?" Y; then
  ln -s $current_directory/.yaourtrc ~/.yaourtrc
fi
