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

### custom
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1
source ~/.profile
echo "${PATH//:/$'\n'}" 
```

## ghostty
[install manual](https://ghostty.org/docs/install/binary)
Надобно шрифты поставить и отрисовку на удаленных серверах починить: в File → Settings подкинуть
```
font-family = "JetBrainsMono Nerd Font"
shell-integration-features = "ssh-terminfo,ssh-env"
macos-option-as-alt = true
keybind = alt+left=unbind
keybind = alt+right=unbind
clipboard-write = "allow"
clipboard-read = "allow"
```


## yazi
[install manual](https://yazi-rs.github.io/docs/installation/)
при использовании zsh с [враппером](https://yazi-rs.github.io/docs/quick-start#shell-wrapper) там по y входить, по q выходить (с сохранением найденной локации в pwd). Остальное интуитивно.

## zellij
[install manual](https://zellij.dev/documentation/installation.html)

## zed
[install manual](https://zed.dev/docs/installation)

### spell checker
install [core](https://github.com/blopker/codebook) and [plugin](https://zed.dev/extensions/codebook)
```
mkdir -p ~/.config/codebook
ln -s ~/.dotfiles/codebook/codebook.toml ~/.config/codebook/codebook.toml
```