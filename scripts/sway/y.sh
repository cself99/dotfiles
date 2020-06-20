#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg workspace 6
elif (( $data == 2 )); then
    swaymsg workspace 16
elif (( $data == 0 )); then
    swaymsg workspace 26
fi

