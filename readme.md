# config & tips

## installation

```
cd ~
git clone git@github.com:mcgr0g/dotfiles.git .dotfiles
git pull --recurse-submodules
ln -s .dotfiles/.gitconfig .gitconfig
mv .bashrc .bashrc-bkp
ln -s .dotfiles/.bashrc .bashrc
mv .zshrc .zshrc-bkp
ln -s .dotfiles/.zshrc .zshrc
mkdir -p ~/.config/mise
ln -s ~/.dotfiles/mise/config.toml ~/.config/mise/config.toml
mise install
```


## omz
https://github.com/ohmyzsh/ohmyzsh/wiki

help: [fontconfig](https://powerline.readthedocs.org/en/latest/installation/linux.html#fontconfig)

### custom
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1
source ~/.profile
echo "${PATH//:/$'\n'}" 
```

## tmux
[readme](tmux/readme.md)
