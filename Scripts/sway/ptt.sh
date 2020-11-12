#!/bin/bash
pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo 0
pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.stereo-fallback 0
mpv ~/Documents/ptt.wav
