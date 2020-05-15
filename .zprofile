export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim
export WINEESYNC=1
export WINEFSYNC=1
export MPD_HOST=127.0.0.1
export MPD_PORT=6601
export QT_STYLE_OVERRIDE=gtk2
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export GTK_THEME=Arc-Dark
export RADV_PERFTEST=aco
export mesa_glthread=true

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  XKB_DEFAULT_LAYOUT=us exec sway
fi

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
