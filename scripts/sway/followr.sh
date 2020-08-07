#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg move container to workspace 14 && swaymsg workspace 14
#elif (( $data == 2 )); then
#    swaymsg move container to workspace 11
elif (( $data == 0 )); then
   swaymsg move container to workspace 4 && swaymsg workspace 4
fi

