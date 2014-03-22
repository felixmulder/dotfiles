-- fence, awesome3 theme, by jorick

--{{{ Main
local awful = require("awful")

local light   = false

theme = {}
home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/fence"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

if awful.util.file_readable(config .. "/vain/init.lua") then
    theme.useless_gap_width  = "3"
end
--}}}
theme.font          = "Open Sans 16"

if light then -- light theme!
  theme.bg_focus      = "#05050500"
  theme.bg_normal     = "#19191900"
  theme.bg_urgent     = "#d6d9ba00"
  theme.bg_minimize   = "#19191900"

  theme.fg_normal     = "#d0d0cc" -- text color normal
  theme.fg_focus      = "#527ead" -- text color focused
  theme.fg_urgent     = "#2c2c2c"
  theme.fg_minimize   = "#d0d0cc"

  theme.border_width  = "0"
  theme.border_normal = "#000000"
  theme.border_focus  = "#535d6c"
  theme.border_marked = "#91231c"
  theme.taglist_fg_focus = "#527ead"
else -- dark theme!
  theme.bg_focus      = "#2C3E50"
  theme.bg_normal     = "#2C3E50"
  theme.bg_urgent     = "#2C3E50"
  theme.bg_minimize   = "#2C3E50"

  theme.fg_normal     = "#ffffff" -- text color normal
  theme.fg_focus      = "#527ead" -- text color focused
  theme.fg_urgent     = "#2c2c2c"
  theme.fg_minimize   = "#d0d0cc"

  theme.border_width  = "0"
  theme.border_normal = "#000000"
  theme.border_focus  = "#535d6c"
  theme.border_marked = "#91231c"
  theme.taglist_fg_focus = "#527ead"
end


-- Taglist
theme.taglist_squares_sel   = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarew.png"
theme.taglist_squares_resize = true

theme.tasklist_floating_icon = themedir .. "/tasklist/floating.png"
theme.tasklist_disable_icon = true

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themedir .. "/submenu.png"
theme.menu_height = "30"
theme.menu_width  = "250"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"


-- You can use your own layout icons like this:
theme.layout_fairh = themedir .. "/layouts/fairh.png"
theme.layout_fairv = themedir .. "/layouts/fairv.png"
theme.layout_floating  = themedir .. "/layouts/floating.png"
theme.layout_magnifier = themedir .. "/layouts/magnifier.png"
theme.layout_max = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tile = themedir .. "/layouts/tile.png"
theme.layout_tiletop = themedir .. "/layouts/tiletop.png"
theme.layout_spiral  = themedir .. "/layouts/spiral.png"
theme.layout_dwindle = themedir .. "/layouts/dwindle.png"

theme.layout_uselessfair = themedir .. "/layouts/fairv.png"
theme.layout_uselessfairh = themedir .. "/layouts/fairh.png"
theme.layout_uselessdwindle = themedir .. "/layouts/dwindle.png"
theme.layout_uselesstile = themedir .. "/layouts/tile.png"
--theme.awesome_icon = themedir .. "/arch-blue.png"

theme.battery_100     = themedir .. "/panel-icons/gpm-primary-100.svg"
theme.battery_080     = themedir .. "/panel-icons/gpm-primary-080.svg"
theme.battery_060     = themedir .. "/panel-icons/gpm-primary-060.svg"
theme.battery_040     = themedir .. "/panel-icons/gpm-primary-040.svg"
theme.battery_020     = themedir .. "/panel-icons/gpm-primary-020.svg"
theme.battery_000     = themedir .. "/panel-icons/gpm-primary-000.svg"
theme.battery_chg_100 = themedir .. "/panel-icons/gpm-primary-charged.svg"
theme.battery_chg_080 = themedir .. "/panel-icons/gpm-primary-080-charging.svg"
theme.battery_chg_060 = themedir .. "/panel-icons/gpm-primary-060-charging.svg"
theme.battery_chg_040 = themedir .. "/panel-icons/gpm-primary-040-charging.svg"
theme.battery_chg_020 = themedir .. "/panel-icons/gpm-primary-020-charging.svg"
theme.battery_chg_000 = themedir .. "/panel-icons/gpm-primary-000-charging.svg"

theme.vol_muted = themedir .. "/panel-icons/audio-volume-muted.svg"
theme.vol_high  = themedir .. "/panel-icons/audio-volume-high.svg"
theme.vol_med   = themedir .. "/panel-icons/audio-volume-medium.svg"
theme.vol_low   = themedir .. "/panel-icons/audio-volume-low.svg"
theme.vol_none  = themedir .. "/panel-icons/audio-volume-off.svg"

theme.useless_gap_width = 10

return theme
