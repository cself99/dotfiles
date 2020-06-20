#!/bin/bash
pactl load-module module-null-sink sink_name=Virtual1
pactl load-module module-loopback source=alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo sink=Virtual1
pactl load-module module-loopback source=Virtual1.monitor sink=alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo
pactl load-module module-combine-sink sink_name=nullandmain slaves=alsa_output.usb-Kingston_HyperX_Virtual_Surround_Sound_00000000-00.analog-stereo,Virtual1
sudo modprobe v4l2loopback
wf-recorder --muxer=v4l2 --codec=rawvideo --pixel-format=yuv420p --file=/dev/video0
