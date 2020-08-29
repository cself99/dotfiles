#!/usr/bin/env bash
data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
if (( $data == 1 )); then
    swaymsg workspace 13
#elif (( $data == 2 )); then
#    swaymsg workspace 13
elif (( $data == 0 )); then
    swaymsg workspace 3
fi
