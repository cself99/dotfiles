export WINEESYNC=1
export WINEFSYNC=1
export EDITOR="nvim"

systemctl --user import-environment DISPLAY

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
