#!/usr/bin/env sh

killall -q redshift
sxhkd &
unclutter &
xsetroot -cursor_name left_ptr &
clipster -d &
picom --dbus --experimental-backends --backend glx --config ~/.config/picom/picom.conf &
feh --bg-fill ~/Pictures/wall.jpg
yams
mpd_discord_richpresence -p=6601 --no-idle --fork
while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
redshift &





