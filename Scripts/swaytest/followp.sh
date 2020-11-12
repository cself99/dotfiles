#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg move container to workspace 10 && swaymsg workspace 10
elif (( $data <= 20 )); then
    swaymsg move container to workspace 20 && swaymsg workspace 20
elif (( $data <= 30 )); then
    swaymsg move container to workspace 30 && swaymsg workspace 30
fi
