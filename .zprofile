export EDITOR="nvim"
export MPD_HOST=127.0.0.1
export MPD_PORT=6601

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
