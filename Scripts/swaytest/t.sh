#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg workspace 5
elif (( $data <= 20 )); then
    swaymsg workspace 15
elif (( $data <= 30 )); then
    swaymsg workspace 25
fi
