#!/usr/bin/env bash
data=`i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    i3-msg workspace 4
elif (( $data <= 20 )); then
    i3-msg workspace 14
elif (( $data <= 30 )); then
    i3-msg workspace 24
fi
