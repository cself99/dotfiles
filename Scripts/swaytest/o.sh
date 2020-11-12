#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg workspace 9
elif (( $data <= 20 )); then
    swaymsg workspace 19
elif (( $data <= 30 )); then
    swaymsg workspace 29
fi
