#!/usr/bin/env bash
set -x 
if ! lsmod | grep v4l2loopback > /dev/null; then
	echo "Adding v42loopback module to kernel"
	sudo modprobe v4l2loopback
fi

wf-recorder --muxer=v4l2 --codec=rawvideo -x yuv420p --file=/dev/video0
