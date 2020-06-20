export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim
export WINEESYNC=1
export WINEFSYNC=1
export MPD_HOST=127.0.0.1
export MPD_PORT=6600
export MOZ_ENABLE_WAYLAND=1
export KITTY_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export QT_QPA_PLATFORMTHEME=qt5ct
export GTK_THEME=Arc-Dark
export RADV_PERFTEST=aco

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  XKB_DEFAULT_LAYOUT=us exec sway
fi

#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi
