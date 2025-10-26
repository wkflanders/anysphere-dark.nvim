local fg = "#d6d6dd"
local fg_dim = "#CCCCCC"
local bg = "#141414"
local panel = "#181818"
local gold = "#EFB080"
local magenta = "#D46FE8"
local blue = "#88C0D0"
local red = "#BF616A"
local teal = "#83D6C5"

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
