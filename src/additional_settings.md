# Additional settings

## kernel speed up

For AMD CPU need to set flag for swithing off some emulated CPU commands
in `/etc/default/grub`

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mitigations=off clearcpuid=514"

1. mitigations=off - turning off some slow shields from CPU CVEs
2. https://github.com/ValveSoftware/Proton/issues/2927
   clearcpuid=514 - emulate SGDT instructions, it is slow too
and `sudo update-grub`

## other

If you see freezes when HDMI-0 display is off by xrandr it is just because
projector trying to connect to computer in cycle. Just turn off HDMI on projector
when you do not play game.