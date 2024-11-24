https://docs.helix-editor.com/package-managers.html

```
mkdir projects && cd "$_"
git clone https://github.com/mcgr0g/dotfiles.git
ls -la ~/.config/
rm -rf ~/.config/helix
ln -s ${PWD}/dotfiles/helix ~/.config/helix
```

install https://asdf-vm.com/guide/getting-started.html with [plugins](https://github.com/asdf-vm/asdf-plugins)
- https://github.com/asdf-vm/asdf-nodejs.git
- https://github.com/asdf-community/asdf-python
- https://github.com/Stratus3D/asdf-lua
- https://github.com/lsanwick/asdf-jq.git
- https://github.com/douglasdgoulart/asdf-kcat
- https://github.com/asdf-community/asdf-golang
- https://github.com/halcyon/asdf-java

install LSP via guide https://github.com/helix-editor/helix/wiki/Language-Server-Configurations

so bashrc has new lines
```
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
. ~/.asdf/plugins/java/set-java-home.bash
. ~/.asdf/plugins/golang/set-env.bash
```
