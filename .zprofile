[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/home/c/.local/bin
