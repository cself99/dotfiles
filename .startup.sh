#!/usr/bin/env sh

killall -q redshift
unclutter &
[ ! -s ~/.config/mpd/pid ] && mpd
xsetroot -cursor_name left_ptr &
clipster -d &
picom --dbus --experimental-backends --backend glx --config ~/.config/picom/picom.conf &
feh --bg-fill ~/Pictures/wall.jpg
sxhkd &
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift &
