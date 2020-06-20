#!/usr/bin/env bash
data=`i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    i3-msg move container to workspace 5
elif (( $data <= 20 )); then
    i3-msg move container to workspace 15
elif (( $data <= 30 )); then
    i3-msg move container to workspace 25
fi
