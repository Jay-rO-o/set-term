#!/bin/bash

# uninstall .oh-my-zsh
sudo chmod 755 ~/.oh-my-zsh/tools/uninstall.sh
echo y | ~/.oh-my-zsh/tools/uninstall.sh
rm -rf ~/.zsh* ~/.p10k*

# remove vim vundle & vimrc
rm -rf ~/.vim/ ~/.vimrc
