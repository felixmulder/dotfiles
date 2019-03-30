awesome battery widget
======================

A battery widget for awesome wm, the widget uses a couple of icons. In your
theme.lua or rc.lua (or whatever else you might fancy) you need to define the
following variables:

```
beautiful.battery_100 = themedir .. "/path-to-image"
beautiful.battery_080 = themedir .. "/path-to-image"
beautiful.battery_060 = themedir .. "/path-to-image"
beautiful.battery_040 = themedir .. "/path-to-image"
beautiful.battery_020 = themedir .. "/path-to-image"
beautiful.battery_000 = themedir .. "/path-to-image"
...
beautiful.battery_chg_100 = themedir .. "/path-to-image"
beautiful.battery_chg_080 = themedir .. "/path-to-image"
beautiful.battery_chg_060 = themedir .. "/path-to-image"
beautiful.battery_chg_040 = themedir .. "/path-to-image"
beautiful.battery_chg_020 = themedir .. "/path-to-image"
beautiful.battery_chg_000 = themedir .. "/path-to-image"
```

If you define these variables in your theme.lua (which you should imo) then
instead of "beautiful.battery..." use "theme.battery..." or whatever variable
you choose to build your theme within.

I have included a couple of suitable icons in the icons folder. These are from
the Faenza theme: http://gnome-look.org/content/show.php/Faenza?content=128143
