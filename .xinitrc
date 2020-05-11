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

#export PATH={$PATH}:/usr/local/bin
#export PATH={$PATH}:/home/c/.local/bin

xrandr --output DVI-D-0 --primary --mode 1920x1080 --gamma 0.9:0.9:0.9 --rotate normal --output HDMI-0 --mode 1920x1080 --gamma 0.9:0.9:0.9 --right-of DVI-D-0 --rotate normal
systemctl --user import-environment DISPLAY

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
