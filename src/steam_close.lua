local default_tv_output="HDMI-0"
local default_tv_resolution="1920x1080"
local default_main_screen="DP-4"
local default_main_resolution="2560x1600"
local default_main_scale="1.5x1.5"
local default_main_panning="3413x2133"

local sleep_time_sec=5
local default_sink_for_work = "bluez_output.6C_47_60_EC_7B_EB.a2dp-sink"

if string.match(get_class_instance_name(), "Steam") and string.match(get_window_name(), "Steam") then
    debug_print("Found Steam window closing")
    --os.execute(string.format('(pactl set-default-sink "%s") &', default_sink_for_work))
    os.execute(string.format("(xrandr --output %s --mode %s --scale %s --primary --crtc 0 --output %s --off) &",
    default_main_screen,
    default_main_resolution,
    default_main_scale,
    default_tv_output))
    os.execute(string.format("sleep %s",sleep_time_sec))
    set_window_position(0, 0)
    set_on_top()
    focus()
    set_window_fullscreen(false)
end
