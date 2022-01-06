#!/bin/bash
ZSH_CUSTOM_DIR=~/.oh-my-zsh/custom
# - oh-my-zsh + powerlevel10k
# install oh-my-zsh
echo -n "Install oh-my-zsh ..."
echo exit | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" > /dev/null 2>&1
echo "Done!"
# download syntax highlight
echo -n "Download zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting > /dev/null 2>&1
echo "Done!"
# download auto suggestion
echo -n "Download zsh-autosuggestions..."
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions > /dev/null 2>&1
echo "Done!"
# download powerlevel10k
echo -n "Download powerlevel10k..."
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM_DIR/themes/powerlevel10k > /dev/null 2>&1
echo "Done!"
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
sed -i '/ZSH_THEME/ s/".*"/"powerlevel10k\/powerlevel10k"/' ~/.zshrc
# apply .zshrc
echo "Apply .zshrc"
echo "source ~/.zshrc && exit" | zsh

# download vim bundle
echo -n "Download vim vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1
echo "Done!"
# copy vimrc
cp ./vimrc ~/.vimrc
# install plugins
vim +PluginInstall

sed -i '/colorscheme/ s/" //' ~/.vimrc
