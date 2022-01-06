# oh-my-zsh and vim vundle
# Install
1. Install Zsh & ctags
```bash
# Ubuntu
sudo apt install zsh exuberant-ctags
```
2. set default shell to zsh
```bash
chsh -s `which zsh`
```
3. Run `bootstrap.sh`
```bash
$ ./bootstrap.sh
```
4. restart `terminal` & setting `p10k`

# Uninstall
1. Run `cleanup.sh`
> uninstall `oh-my-zsh`  
> remove `.vimrc` `.vim/` `.zsh*` `p10k*`
```bash
$ ./cleanup.sh
```