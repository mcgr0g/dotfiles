about:
- https://github.com/tony/tmux-config
- https://github.com/tmux/tmux/wiki/Getting-Started
- https://github.com/rothgar/awesome-tmux
- https://github.com/tony/tmux-config

### plugin manager
https://github.com/tmux-plugins/tpm
```
Ctrl-a I # Установит tmux-yank и все остальные!
```

### yank
https://github.com/tmux-plugins/tmux-yank

```bash
sudo apt install xsel
```

### finally

```bash
cd ~/
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmux/plugins ~/.tmux/plugins
Ctrl-a U                       # обновит плагины (tmux-yank)
tmux new -s dev
tmux ls
tmux attach -t dev
tmux source ~/.tmux.conf
tmux list-keys

Ctrl-a n    # Следующее окно
Ctrl-a p    # Предыдущее окно  
Ctrl-a 1    # Окно номер 1 (с твоим base-index 1)
Ctrl-a 2    # Окно номер 2
Ctrl-a w    # Список окон (выбрать мышкой/клавишами)
```
