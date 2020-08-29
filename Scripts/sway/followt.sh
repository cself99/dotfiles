#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg move container to workspace 15 && swaymsg workspace 15
#elif (( $data == 2 )); then
#    swaymsg move container to workspace 11
elif (( $data == 0 )); then
   swaymsg move container to workspace 5 && swaymsg workspace 5
fi

