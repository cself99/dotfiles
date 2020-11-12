#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg move container to workspace 6
elif (( $data <= 20 )); then
    swaymsg move container to workspace 16
elif (( $data <= 30 )); then
    swaymsg move container to workspace 26
fi
