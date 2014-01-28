local awful     = require("awful")
local wibox     = require("wibox")
local naughty   = require("naughty")
local beautiful = require("beautiful")

local widget = wibox.widget.imagebox()

local percentage = 0
local timeLeft = ""
local status = "Discharging"

local widget_t = awful.tooltip({
  objects = { widget },
  timer_function = function()
    return "<span font_desc=\"Sans 18\">" .. percentage .. "% " .. timeLeft .. "</span>"
  end,
})

local function read()
    fh = assert(io.popen("cat /sys/class/power_supply/BAT0/capacity"))
    percentage = tonumber(fh:read("*l"))
    fh:close()    
    fh = assert(io.popen("cat /sys/class/power_supply/BAT0/status"))
    status = fh:read("*l")
    fh:close()
    fh = assert(io.popen("cat /sys/class/power_supply/BAT0/energy_now"))
    local energyNow = tonumber(fh:read("*l"))
    fh:close()
    fh = assert(io.popen("cat /sys/class/power_supply/BAT0/voltage_now"))
    local voltageNow = tonumber(fh:read("*l"))
    fh:close()
    fh = assert(io.popen("cat /sys/class/power_supply/BAT0/power_now"))
    local currentNow = tonumber(fh:read("*l"))
    fh:close()

    local minutesLeft = math.floor((energyNow * 1e-5 / (currentNow * voltageNow * 1e-12)) * 60 + 0.5)
    local hoursLeft = math.floor(minutesLeft / 60)

    if hoursLeft == 1 then
      timeLeft = hoursLeft .. " hour and " .. minutesLeft % 60 .. " min left"
    else
      timeLeft = hoursLeft .. " hours and " .. minutesLeft % 60 .. " min left"
    end

end

local widgettimer = timer({ timeout = 60 })    
widgettimer:connect_signal("timeout",    
  function()    
    read()
    if status == "Discharging" then
      if percentage > 80 then
        widget:set_image(beautiful.battery_100)
      elseif percentage > 60 then
        widget:set_image(beautiful.battery_080)
      elseif percentage > 40 then
        widget:set_image(beautiful.battery_060)
      elseif percentage > 20 then
        widget:set_image(beautiful.battery_040)
      elseif percentage > 10 then
        widget:set_image(beautiful.battery_020)
      else
        widget:set_image(beautiful.battery_000)
      end
    else -- Battery charging
      if percentage > 80 then
        widget:set_image(beautiful.battery_chg_100)
      elseif percentage > 60 then
        widget:set_image(beautiful.battery_chg_080)
      elseif percentage > 40 then
        widget:set_image(beautiful.battery_chg_060)
      elseif percentage > 20 then
        widget:set_image(beautiful.battery_chg_040)
      elseif percentage > 10 then
        widget:set_image(beautiful.battery_chg_020)
      else
        widget:set_image(beautiful.battery_chg_000)
      end
    end
  end    
)    

read()

widgettimer:start()

return widget
