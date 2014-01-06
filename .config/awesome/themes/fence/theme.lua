-- fence, awesome3 theme, by jorick

--{{{ Main
local awful = require("awful")

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

wallpaper1    = themedir .. "/background.jpg"
wallpaper2    = themedir .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"

if awful.util.file_readable(wallpaper1) then
    theme.wallpaper = wallpaper1
elseif awful.util.file_readable(wallpaper2) then
    theme.wallpaper = wallpaper2
elseif awful.util.file_readable(wallpaper3) then
    theme.wallpaper = wallpaper3
else
    theme.wallpaper = wallpaper4
end

if awful.util.file_readable(config .. "/vain/init.lua") then
    theme.useless_gap_width  = "3"
end
--}}}
theme.font          = "Montecarlo 18"

theme.bg_normal     = "#05050595"
theme.bg_focus      = "#191919"
theme.bg_urgent     = "#d6d9ba"
theme.bg_minimize   = "#19191995"

theme.fg_normal     = "#d0d0cc"
theme.fg_focus      = "#d6d9ba"
theme.fg_urgent     = "#2c2c2c"
theme.fg_minimize   = "#2c2c2c"

theme.border_width  = "0"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = themedir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "/taglist/squarew.png"
theme.taglist_squares_resize = "true"

theme.tasklist_floating_icon = themedir .. "/tasklist/floating.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themedir .. "/submenu.png"
theme.menu_height = "16"
theme.menu_width  = "100"

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
theme.awesome_icon = themedir .. "/arch-blue.png"
--theme.awesome_icon = themedir .. "/logo20.png"

theme.useless_gap_width                         = 10

return theme
