# Some steam stuff

Some stuff for make Steam Big Picture more comfortable.

1. devilspie2 scripts for control steam big picture window with connected HDMI (ARC) TV screen. 
It switch sound to HDMI and move Big Picture window to HDMI screen. If Big Picture mode was closed it move main Steam window to main screen.

`sudo apt-get install devilspie2`

Need to set name of sound sinks and size of main screen in configs.

Sink names list: `pactl list short`

Config (all lua scripts) must be placed to `~/.config/devilspie2/`

2. desktop file to start Steam silently. Must be placed to `/usr/shared/applications/steam.desktop`
And you can set autostart it. It started with HiDPI size of UI.

Use case:

1. Open HDMI source on TV
2. Press PS button on Dualsense gamepad
3. It will start Steam main window on main screen of laptop
4. Press PS button again
5. Big Picture window will start and be moved to HDMI screen by devilspie2. And sound will be changed to HDMI.
6. Play games! :)
7. Close Big picture mode if you need.
8. Steam main window will moved to main screen. And sound will be moved to another sink.