#!/bin/bash
pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo 1
pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.stereo-fallback 1
mpv ~/Documents/pttr.wav
