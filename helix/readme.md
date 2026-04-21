https://docs.helix-editor.com/package-managers.html

```
mkdir projects && cd "$_"
git clone https://github.com/mcgr0g/dotfiles.git
ls -la ~/.config/
rm -rf ~/.config/helix
ln -s ${PWD}/dotfiles/helix ~/.config/helix
```

install LSP via guide https://github.com/helix-editor/helix/wiki/Language-Server-Configurations