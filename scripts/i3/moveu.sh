#!/usr/bin/env bash
data=`i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'`
echo $data
if (( $data <= 10 )); then
    i3-msg move container to workspace 7
elif (( $data <= 20 )); then
    i3-msg move container to workspace 17
elif (( $data <= 30 )); then
    i3-msg move container to workspace 27
fi
