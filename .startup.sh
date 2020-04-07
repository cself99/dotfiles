#!/usr/bin/env sh

killall -q redshift
unclutter &
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift &
xsetroot -cursor_name left_ptr &
clipster -d &
picom --dbus --experimental-backends --backend glx --config ~/.config/picom/picom.conf &
feh --bg-fill ~/Pictures/wall.jpg
sxhkd &
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar mainbar-bspwm &
polybar mainbar-bspwm-third &
