export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim
export WINEESYNC=1
export WINEFSYNC=1
export MPD_HOST=127.0.0.1
export MPD_PORT=6600
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
export RADV_PERFTEST=aco
export QT_QPA_PLATFORMTHEME=qt5ct
export GTK_THEME=Arc-Dark
export WINEPREFIX=~/HDD/.wine
export XDG_CURRENT_DESKTOP=sway
export MANGOHUD_CONFIG=toggle_hud=F10,toggle_logging=F3
export NNN_TRASH=1
systemctl --user import-environment; systemctl --user start graphical-session.target
