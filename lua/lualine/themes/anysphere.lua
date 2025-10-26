local fg = "#d6d6dd"
local fg_dim = "#a6a6a6"
local bg = "#1d1d1d"
local panel = "#181818"
local gold = "#e5b95c"
local magenta = "#e567dc"
local blue = "#4c9df3"
local red = "#f14c4c"
local teal = "#15ac91"

return {
	normal = {
		a = { fg = "#0E0E0E", bg = gold, gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	insert = {
		a = { fg = "#0E0E0E", bg = magenta, gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	visual = {
		a = { fg = "#0E0E0E", bg = blue, gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	replace = {
		a = { fg = "#0E0E0E", bg = red, gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	command = {
		a = { fg = "#0E0E0E", bg = teal, gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	inactive = {
		a = { fg = fg_dim, bg = "#1a1a1a", gui = "bold" },
		b = { fg = fg_dim, bg = "#1a1a1a" },
		c = { fg = fg_dim, bg = "#1a1a1a" },
	},
}
