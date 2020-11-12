#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg move container to workspace 4
elif (( $data <= 20 )); then
    swaymsg move container to workspace 14
elif (( $data <= 30 )); then
    swaymsg move container to workspace 24
fi
