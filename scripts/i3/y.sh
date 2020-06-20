#!/usr/bin/env bash
data=`i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    i3-msg workspace 6
elif (( $data <= 20 )); then
    i3-msg workspace 16
elif (( $data <= 30 )); then
    i3-msg workspace 26
fi
