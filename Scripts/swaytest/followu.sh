#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg move container to workspace 7 && swaymsg workspace 7
elif (( $data <= 20 )); then
    swaymsg move container to workspace 17 && swaymsg workspace 17
elif (( $data <= 30 )); then
    swaymsg move container to workspace 27 && swaymsg workspace 27
fi
