#!/bin/sh

HOME_VIMRC=~/.vimrc

if [ ! -d ~/.vim/bundle ]; then
  mkdir -p ~/.vim/bundle
fi

# -- install vim plugin manager 
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  cd ~/.vim/bundle/Vundle.vim
  git pull
  cd -
fi

# -- install theme
if [ ! -d ~/.vim/bundle/gruvbox ]; then 
  git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
else 
  cd ~/.vim/bundle/gruvbox
  git pull
  cd -
fi

# -- copy .vimrc 
if [ -f "$HOME_VIMRC" ]; then
  echo "Backup old .vimrc file"
  mv $HOME_VIMRC ~/.vimrc.bak
fi
cp .vimrc $HOME_VIMRC

# -- install plugins
vim +PluginInstall +qall


