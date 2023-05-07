#!/bin/sh

gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true
#gsettings set org.gnome.desktop.interface scaling-factor 1
xrandr --output DP-4 --off --output HDMI-0 --mode 1920x1080 --scale 1x1 --primary --crtc 0