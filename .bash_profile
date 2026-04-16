# ~/.bash_profile

# Start message
(exec -a "STP" sh ~/.termux/boot/01-startup-msg) & disown

# initial setup priority
sh ~/.termux/boot/00-pywal
if termux-reload-settings; then
	pkill 'STP' && clear && fastfetch
fi
source ~/.config/wal/colors.sh
source /data/data/com.termux/files/home/.config/broot/launcher/bash/br

# Verify & start these programs
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.profile ]] && . ~/.profile
