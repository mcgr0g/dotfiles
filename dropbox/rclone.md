rclone + systemd service
```bash
rclone config
rclone lsd dropbox:Apps
rclone lsf dropbox:Apps/KeeWeb
mkdir -p Documents/kee
rclone bisync dropbox:Apps/KeeWeb ~/Documents/kee --resync --dry-run
rclone bisync dropbox:Apps/KeeWeb ~/Documents/kee --resync
ls -la ~/.cache/rclone/bisync
mkdir -p ~/.local/bin

cat > ~/.local/bin/rclone-keepass << 'EOF'
#!/bin/bash
set -euo pipefail

# Путь к лог-файлу (можно изменить)
LOG="$HOME/.local/log/rclone-keepass.log"

# Создаём папку для логов, если нужно
mkdir -p "$(dirname "$LOG")"

# Запускаем двустороннюю синхронизацию
exec rclone bisync dropbox:Apps/KeeWeb "$HOME/Documents/kee" \
  --log-file="$LOG" \
  --verbose
EOF

cat ~/.local/bin/rclone-keepass
chmod 700 ~/.local/bin/rclone-keepass
ls -la ~/.local/bin/rclone-keepass

mkdir -p ~/.config/systemd/user

cat > ~/.config/systemd/user/rclone-keepass.service << EOF
[Unit]
Description=Rclone KeePass sync
After=network.target

[Service]
Type=oneshot
ExecStart=%h/.local/bin/rclone-keepass
Environment=PATH=/usr/local/bin:/usr/bin:/bin
EOF

cat > ~/.config/systemd/user/rclone-keepass.timer << EOF
[Unit]
Description=Run rclone-keepass every 10 minutes
Requires=rclone-keepass.service

[Timer]
OnBootSec=5min
OnUnitActiveSec=10min
AccuracySec=1s

[Install]
WantedBy=timers.target
EOF

ls -l ~/.config/systemd/user/rclone-keepass.{service,timer}

systemctl --user daemon-reload
systemctl --user enable --now rclone-keepass.timer

journalctl --user -u rclone-keepass.service -n 20
cat ~/.local/log/rclone-keepass.log

# sudo loginctl enable-linger $USER
``` bash