# config & tips

## installation

```
cd ~
git clone git@github.com:mcgr0g/dotfiles.git
ln -s dotfiles/.tool-versions .tool-versions
ln -s dotfiles/.default-npm-packages .default-npm-packages
ln -s dotfiles/.default-golang-pkgs .default-golang-pkgs
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.gitconfig .gitconfig
```

## asdf
exec

```
sudo  rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf go1.24.4.linux-amd64.tar.gz
go install github.com/asdf-vm/asdf/cmd/asdf@v0.17.0
```
`nano ~/.profile`
```
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/goproject
export GOROOT=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
```
exec
```
source ~/.profile
go install github.com/asdf-vm/asdf/cmd/asdf@v0.17.0
```


## omz
https://github.com/ohmyzsh/ohmyzsh/wiki

help: [fontconfig](https://powerline.readthedocs.org/en/latest/installation/linux.html#fontconfig)
### custom
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1
cp .zshrc .zshrc.bkp
ln -s dotfiles/.zshrc .zshrc
```

## LSP
use list from https://microsoft.github.io/language-server-protocol/implementors/servers/ 
or https://github.com/helix-editor/helix/wiki/Language-Server-Configurations


## For vim:

### requirements
You need to install [Vundle](https://github.com/VundleVim/Vundle.vim)
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
