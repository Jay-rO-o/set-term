#!/bin/bash

# uninstall .oh-my-zsh
sudo chmod 755 ~/.oh-my-zsh/tools/uninstall.sh
echo y | ~/.oh-my-zsh/tools/uninstall.sh

# remove vim vundle & vimrc
rm -rf ~/.vim/ ~/.vimrc
