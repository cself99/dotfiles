#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg move container to workspace 18 && swaymsg workspace 18
#elif (( $data == 2 )); then
#    swaymsg move container to workspace 11
elif (( $data == 0 )); then
   swaymsg move container to workspace 8 && swaymsg workspace 8
fi

