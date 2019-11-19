# config & tips

## installation
```
cd ~
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.gitconfig .gitconfig
ln -s dotfiles/.vimrc .vimrc
```

## Terminal preferences
**colors**
```
foreground: [
    hex : ( #AAAAAA ) ,
    rgb : (170, 170, 170) ],
background: [
    hex : ( #232323 ) ,
    rgb : (35, 35, 35) ]
```

## For vim:

### requirements
You need to install [Vundle](https://github.com/VundleVim/Vundle.vim)
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### for solve troubles with **vim-airline**:

 1. read this [paragraph](https://powerline.readthedocs.org/en/latest/installation/linux.html#fontconfig) about fontconfig
 2. make tips from 1 to 5 to . It'll decrease blood pressure

on ubuntu17.04 you should use
```
# move font to valid font path
mv PowerlineSymbols.otf /usr/share/fonts/
# Update font cache for the path the font
fc-cache -vf /usr/share/fonts/
# Install the fontconfig file
mv 10-powerline-symbols.conf /etc/fonts/conf.d/
```

### finally

open any file in vim and run `:PluginInstall`

## (x)ubuntu

**dark theme**

```
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install delorean-dark
```

>**Note:** perfect is delorean-dark-theme-G-3.9
