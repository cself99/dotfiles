if [ -d /etc/X11/xinit/xinitrc.d ]; then
for f in /etc/X11/xinit/xinitrc.d/*; do
[ -x "$f" ] && . "$f"
done
unset f
fi

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

xrandr --output DP-0 --mode 2560x1440 --rate 143.96 --gamma 0.6:0.6:0.6 --primary --reflect normal --rotate normal --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 60.00 --reflect normal --rotate normal &

cpupower frequency-set -g powersave
pactl load-module module-loopback latency_msec=1 &

systemctl --user import-environment DISPLAY
export EDITOR="nvim"
export PATH="${PATH}:/home/c/bin"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec bspwm 
