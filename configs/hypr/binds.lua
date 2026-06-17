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

hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
	local key = i % 10
	hl.bind(mod .. " + " .. key, hl.dsp.focus({workspace = i}))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({workspace = i}))
end


