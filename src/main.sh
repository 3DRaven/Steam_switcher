#!/bin/sh

gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true
#gsettings set org.gnome.desktop.interface scaling-factor 2
xrandr --output DP-4 --mode 2560x1600 --scale 1.5x1.5 --primary --crtc 0 --output HDMI-0 --off
