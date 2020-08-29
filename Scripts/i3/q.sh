#!/usr/bin/env bash
data=`i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    i3-msg workspace 1
elif (( $data <= 20 )); then
    i3-msg workspace 11
elif (( $data <= 30 )); then
    i3-msg workspace 21
fi
