#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg move container to workspace 2
elif (( $data == 2 )); then
    swaymsg move container to workspace 12
elif (( $data == 0 )); then
    swaymsg move container to workspace 22
fi

