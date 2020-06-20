#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg move container to workspace 7
elif (( $data == 2 )); then
    swaymsg move container to workspace 17
elif (( $data == 0 )); then
    swaymsg move container to workspace 27
fi

