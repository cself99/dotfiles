#!/usr/bin/env bash
while read -e -p `swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`; do
    data=`swaymsg -t get_outputs | jq '[.[].focused] | index(true)'`
            echo $data
	        mod="Mod4"
        if (( data == 0 )); then

            swaymsg "bindsym $mod+q workspace 21"
		    swaymsg "bindsym $mod+w workspace 22"
		    swaymsg "bindsym $mod+e workspace 23"
		    swaymsg "bindsym $mod+r workspace 24"
		    swaymsg "bindsym $mod+t workspace 25"
		    swaymsg "bindsym $mod+y workspace 26"
		    swaymsg "bindsym $mod+u workspace 27"
		    swaymsg "bindsym $mod+i workspace 28"
		    swaymsg "bindsym $mod+o workspace 29"
            swaymsg "bindsym $mod+p workspace 30"

		    swaymsg "bindsym $mod+Shift+q move container to workspace 21"
		    swaymsg "bindsym $mod+Shift+w move container to workspace 22"
		    swaymsg "bindsym $mod+Shift+e move container to workspace 23"
		    swaymsg "bindsym $mod+Shift+r move container to workspace 24"
		    swaymsg "bindsym $mod+Shift+t move container to workspace 25"
		    swaymsg "bindsym $mod+Shift+y move container to workspace 26"
		    swaymsg "bindsym $mod+Shift+u move container to workspace 27"
		    swaymsg "bindsym $mod+Shift+i move container to workspace 28"
		    swaymsg "bindsym $mod+Shift+o move container to workspace 29"
            swaymsg "bindsym $mod+Shift+p move container to workspace 30"

        elif (( data == 1 )); then

            swaymsg "bindsym $mod+q workspace 1"
		    swaymsg "bindsym $mod+w workspace 2"
		    swaymsg "bindsym $mod+e workspace 3"
		    swaymsg "bindsym $mod+r workspace 4"
		    swaymsg "bindsym $mod+t workspace 5"
		    swaymsg "bindsym $mod+y workspace 6"
		    swaymsg "bindsym $mod+u workspace 7"
		    swaymsg "bindsym $mod+i workspace 8"
		    swaymsg "bindsym $mod+o workspace 9"
            swaymsg "bindsym $mod+p workspace 10"
 
		    swaymsg "bindsym $mod+Shift+q move container to workspace 1"
		    swaymsg "bindsym $mod+Shift+w move container to workspace 2"
		    swaymsg "bindsym $mod+Shift+e move container to workspace 3"
		    swaymsg "bindsym $mod+Shift+r move container to workspace 4"
		    swaymsg "bindsym $mod+Shift+t move container to workspace 5"
		    swaymsg "bindsym $mod+Shift+y move container to workspace 6"
		    swaymsg "bindsym $mod+Shift+u move container to workspace 7"
		    swaymsg "bindsym $mod+Shift+i move container to workspace 8"
		    swaymsg "bindsym $mod+Shift+o move container to workspace 9"
            swaymsg "bindsym $mod+Shift+p move container to workspace 10"

        elif (( data == 2 )); then

            swaymsg "bindsym $mod+q workspace 11"
		    swaymsg "bindsym $mod+w workspace 12"
		    swaymsg "bindsym $mod+e workspace 13"
		    swaymsg "bindsym $mod+r workspace 14"
		    swaymsg "bindsym $mod+t workspace 15"
		    swaymsg "bindsym $mod+y workspace 16"
		    swaymsg "bindsym $mod+u workspace 17"
		    swaymsg "bindsym $mod+i workspace 18"
		    swaymsg "bindsym $mod+o workspace 19"
            swaymsg "bindsym $mod+p workspace 20"
 
		    swaymsg "bindsym $mod+Shift+q move container to workspace 11"
		    swaymsg "bindsym $mod+Shift+w move container to workspace 12"
		    swaymsg "bindsym $mod+Shift+e move container to workspace 13"
		    swaymsg "bindsym $mod+Shift+r move container to workspace 14"
		    swaymsg "bindsym $mod+Shift+t move container to workspace 15"
		    swaymsg "bindsym $mod+Shift+y move container to workspace 16"
		    swaymsg "bindsym $mod+Shift+u move container to workspace 17"
		    swaymsg "bindsym $mod+Shift+i move container to workspace 18"
		    swaymsg "bindsym $mod+Shift+o move container to workspace 19"
            swaymsg "bindsym $mod+Shift+p move container to workspace 20"

        fi
done < <(swaymsg -t subscribe -m "['workspace']")
