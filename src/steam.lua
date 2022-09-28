-- debug_print("Start")
-- debug_print(get_window_name())
-- debug_print(get_class_instance_name())
-- debug_print(get_application_name())
-- debug_print(get_window_geometry())
-- debug_print(get_window_xid())
-- debug_print(get_window_role())
-- debug_print(get_window_class())
-- debug_print(get_window_type())
-- debug_print(get_window_is_decorated())
-- debug_print(get_process_name())
-- debug_print(get_window_has_name())
-- debug_print("Finish")
--    os.execute("(xrandr --output HDMI-0 --primary) &")
-- env GDK_SCALE=2 /usr/bin/steam -silent %U

local window_position = 3408
local default_sink_for_games = "alsa_output.pci-0000_01_00.1.hdmi-stereo"
local default_sink_for_work = "bluez_output.6C_47_60_EC_7B_EB.a2dp-sink"

if string.match(get_class_instance_name(), "steam") and string.match(get_window_name(), "Steam") then
   debug_print("Found Big Picture Steam window")
   set_window_position(window_position, 0)
   set_on_top()
   focus()
   set_window_fullscreen(true)
   os.execute(string.format('(pactl set-default-sink "%s") &', default_sink_for_games))
end

if string.match(get_class_instance_name(), "Steam") and string.match(get_window_name(), "Steam") then
    debug_print("Found main Steam window")
    set_window_position(0, 0)
    set_on_top()
    focus()
    set_window_fullscreen(false)
    os.execute(string.format('(pactl set-default-sink "%s") &', default_sink_for_work))
end