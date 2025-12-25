# config & tips

## installation

```
cd ~
git clone git@github.com:mcgr0g/dotfiles.git .dotfiles
git pull --recurse-submodules
ln -s .dotfiles/.tool-versions .tool-versions
ln -s .dotfiles/.default-npm-packages .default-npm-packages
ln -s .dotfiles/.default-golang-pkgs .default-golang-pkgs
ln -s .dotfiles/.gitconfig .gitconfig
mv .bashrc .bashrc-bkp
ln -s .dotfiles/.bashrc .bashrc
mv .zshrc .zshrc-bkp
ln -s .dotfiles/.zshrc .zshrc
```

## omz
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1
```

## asdf
https://go.dev/doc/install

exec
```
sudo  rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf go1.24.4.linux-amd64.tar.gz
```

copy to `nano ~/.profile`
```
export GOPATH=$HOME/goproject
export GOPROXY=direct
```

python deps
```
sudo apt-get install build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses-dev libreadline-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev
```



exec
```
source ~/.profile
echo "${PATH//:/$'\n'}" 
mkdir -p $GOPATH $GOROOT
go install github.com/asdf-vm/asdf/cmd/asdf@v0.18.0
asdf plugin add golang
asdf plugin add nodejs
asdf plugin add python
asdf plugin add poetry
asdf plugin add uv
asdf plugin add java
asdf plugin add rust
asdf install
asdf current
```

and after it set every plugin globally (on user):
```
asdf set -u nodejs 25.2.1
asdf set -u python 3.12.7
asdf set -u poetry 2.2.1
asdf set -u uv 0.9.17
asdf set -u java adoptopenjdk-jre-21.0.5+11.0.LTS
asdf set -u just 1.41.0
asdf set -u jq 1.8.1
asdf set -u golang 1.25.5
asdf set -u rust stable
```

check default package installation
```
npm list -g --depth=0
ls "$(go env GOBIN || echo "$(go env GOPATH)/bin")"
```


## omz
https://github.com/ohmyzsh/ohmyzsh/wiki

help: [fontconfig](https://powerline.readthedocs.org/en/latest/installation/linux.html#fontconfig)

### custom
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1
source ~/.profile
```

## LSP
use list from https://microsoft.github.io/language-server-protocol/implementors/servers/ 
or https://github.com/helix-editor/helix/wiki/Language-Server-Configurations

## tmux
[readme](tmux/readme.md)

## vim:

You need to install [Vundle](https://github.com/VundleVim/Vundle.vim)
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
