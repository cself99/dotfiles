export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim
export WINEESYNC=1
export WINEFSYNC=1
export MPD_HOST=127.0.0.1
export MPD_PORT=6601
export QT_STYLE_OVERRIDE=gtk2
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export __GL_THREADED_OPTIMIZATIONS=1

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
