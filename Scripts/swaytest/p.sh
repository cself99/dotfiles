#!/usr/bin/env bash
data=`swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    swaymsg workspace 10
elif (( $data <= 20 )); then
    swaymsg workspace 20
elif (( $data <= 30 )); then
    swaymsg workspace 30
fi
