local mod = "SUPER"

hl.bind(mod .. " + Return", function()
	hl.exec_cmd("kitty")
end)

hl.bind(mod .. " + E", function()
	hl.exec_cmd("dolphin")
end)

hl.bind(mod .. " + Q", function()
	hl.dispatch(hl.dsp.window.close())
end)

hl.bind(mod .. " + R", function()
	hl.exec_cmd("~/.config/rofi/launcher.sh")
end)

hl.bind(mod .. " + X", function()
	hl.exec_cmd("~/.config/rofi/power.sh")
end)

hl.bind(mod .. " + M", function()
	hl.exec_cmd("hyprshutdown")
end)

hl.bind(mod .. " + B", function()
	hl.exec_cmd("firefox")
end)

hl.bind("SUPER + 1", hl.dsp.exec_cmd("hyprctl dispatch workspace 1"))
hl.bind("SUPER + 2", hl.dsp.exec_cmd("hyprctl dispatch workspace 2"))

