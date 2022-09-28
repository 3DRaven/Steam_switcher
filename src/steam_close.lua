local default_main_screen="DP-4"
local sleep_time_sec=5
local default_sink_for_work = "bluez_output.6C_47_60_EC_7B_EB.a2dp-sink"

if string.match(get_class_instance_name(), "Steam") and string.match(get_window_name(), "Steam") then
    debug_print("Found Steam window closing")
    os.execute(string.format('(pactl set-default-sink "%s") &', default_sink_for_work))
    os.execute(string.format("(xrandr --output %s --primary) &",default_main_screen))
    os.execute(string.format("sleep %s",sleep_time_sec))
    set_window_position(0, 0)
    set_on_top()
    focus()
    set_window_fullscreen(false)
end