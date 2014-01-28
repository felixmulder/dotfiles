-- Copyright 2014 Felix Mulder
-- Based off of mokasin's Awesome Pulseaudio Widget
-- This file is part of the Awesome Pulseaudio Widget Text (APWT).
-- 
-- APWT is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
-- 
-- APWT is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- You should have received a copy of the GNU General Public License
-- along with APWT. If not, see <http://www.gnu.org/licenses/>.

-- Configuration variables
local step  = 0.02          -- stepsize for volume change (from 0 to 1)
local mixer = 'pavucontrol' -- mixer command
-- End of configuration

local awful       = require("awful")
local wibox       = require("wibox")
local pulseaudio  = require("apaw.pulseaudio")
local beautiful   = require("beautiful")

local p = pulseaudio:Create()


local widget = wibox.widget.imagebox()

local function _update()
  local vol = math.floor(p.Volume * 100 + 0.5)
	if p.Mute then
    widget:set_image(beautiful.vol_muted)
	else
    if vol > 70 then
      widget:set_image(beautiful.vol_high)
    elseif vol > 40 then
      widget:set_image(beautiful.vol_med)
    elseif vol > 0 then
      widget:set_image(beautiful.vol_low)
    else
      widget:set_image(beautiful.vol_none)
    end
	end
end

function widget.SetMixer(command)
	mixer = command
end

function widget.Up()
	p:SetVolume(p.Volume + step)
	_update()
end	

function widget.Down()
	p:SetVolume(p.Volume - step)
	_update()
end	


function widget.ToggleMute()
	p:ToggleMute()
	_update()
end

function widget.Update()
	p:UpdateState()
	 _update()
end

function widget.LaunchMixer()
	awful.util.spawn_with_shell( mixer )
end


-- register mouse button actions
widget:buttons(awful.util.table.join(
		awful.button({ }, 1, widget.ToggleMute),
		awful.button({ }, 3, widget.LaunchMixer),
		awful.button({ }, 4, widget.Up),
		awful.button({ }, 5, widget.Down)
	)
)

-- initialize
_update()

return widget
