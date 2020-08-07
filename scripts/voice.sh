#!/usr/bin/env bash
pacmd load-module module-null-sink sink_name=mic_denoised_out
pacmd load-module module-ladspa-sink sink_name=mic_raw_in sink_master=mic_denoised_out label=noise_suppressor_mono plugin=/home/c/Documents/RNNoise/ladspa/librnnoise_ladspa.so control=95
pacmd load-module module-loopback source=alsa_input.usb-Audio-Technica_ATR_USB_microphone-00.analog-stereo sink=mic_raw_in channels=1
