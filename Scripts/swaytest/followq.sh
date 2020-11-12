#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg move container to workspace 1 && swaymsg workspace 1
elif (( $data <= 20 )); then
    swaymsg move container to workspace 11 && swaymsg workspace 11
elif (( $data <= 30 )); then
    swaymsg move container to workspace 21 && swaymsg workspace 21
fi
