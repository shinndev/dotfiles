local gears = require("gears")
local filesystem = require("gears.filesystem")

local config = {}

config.modkey = "Mod4"
config.altkey = "Mod1"

config.apps = {
    terminal = "kitty",
    launcher = "rofi -normal-window -modi drun -show drun -theme " .. config_dir .. "rofi/rofi_appmenu.rasi",
    lock = "i3lock",
    screenshot = "scrot -e 'mv $f ~/Pictures/ 2>/dev/null'",
    filebrowser = "thunar"
}

config.run_on_start_up = {
    "picom --experimental-backends --config " .. config_dir .. "picom.conf",
    "setxkbmap tr",
    "xset r rate 200 30",
    "xrandr --output LVDS1 --gamma 0.5"
}

config.network_interfaces = {
    wlan = 'wlp1s0',
    lan = 'enp1s0'
}

return config