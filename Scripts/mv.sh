#!/bin/bash
if [ -f "/home/c/Scripts/ptt.sh" ]; then
    mv /home/c/Scripts/ptt.sh /home/c/Scripts/sway/ptt.sh
    mv /home/c/Scripts/pttr.sh /home/c/Scripts/sway/pttr.sh
    pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo 0
    pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.stereo-fallback 0

    mpv ~/Documents/unmute.wav
else
    mv /home/c/Scripts/sway/ptt.sh /home/c/Scripts/ptt.sh
    mv /home/c/Scripts/sway/pttr.sh /home/c/Scripts/pttr.sh
    pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo 1
    pactl set-source-mute alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.stereo-fallback 1
    mpv ~/Documents/mute.wav
fi
