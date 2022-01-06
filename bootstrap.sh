#!/bin/bash

# - oh-my-zsh + powerlevel10k
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# download syntax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# download auto suggestion
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# download powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# setting plugins
# plugins=(
#	git
#	zsh-syntax-highlighting
#	zsh-autosuggestions
#	sudo
#	history
#	copydir
#	copyfile
#)
sed -i 's/plugins=(git)/plugins=(\n\tgit\n\tzsh-syntax-highlighting\n\tzsh-autosuggestions\n\tsudo\n\thistory\n\tcopydir\n\tcopyfile\n)/' ~/.zshrc
# setting theme
# ZSH_THEME="powerlevel10k/powerlevel10k"
sed -i '/ZSH_THEME/ s/".*"/"powerlevel10k\/powerlevel10k"/'
# apply .zshrc
source ~/.zshrc

# download vim bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# copy vimrc
cp ./vimrc ~/.vimrc
# install plugins
vim +PluginInstall
