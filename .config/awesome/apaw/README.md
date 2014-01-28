Awesome Pulseaudio Widget Text
==============================
A widget using Mokasin's pulesaudio library for lua.


Clone this repo in your .config/awesome dir and add this to your rc.lua:

```
local apaw= require("apaw/widget")
...
right_layout:add(APWT)
...
awful.key({}, "XF86AudioRaiseVolume", apaw.Up),
awful.key({}, "XF86AudioLowerVolume", apaw.Down),
...
```

In your theme.lua file you need to set the following variables:
```
theme.vol_high  = themedir .. "/path/to/image.svg"
theme.vol_med   = themedir .. "/path/to/image.svg"
theme.vol_low   = themedir .. "/path/to/image.svg"
theme.vol_none  = themedir .. "/path/to/image.svg"
theme.vol_muted = themedir .. "/path/to/image.svg"
```

Typically you could use the icons provided in the repo. These icons have been
borrowed from the Faenza theme: http://gnome-look.org/content/show.php/Faenza?content=128143

The icons can also be configured globally using:
```
beautiful.vol_high  = themedir .. "/path/to/image.svg"
...
```
