local fg = "#E4E6EA"
local fg_dim = "#B9BDC6"
local bg = "#141414"
local panel = "#181818"
local gold = "#E3C893"
local magenta = "#E394DC"

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
		a = { fg = "#0E0E0E", bg = "#8DB8FF", gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	replace = {
		a = { fg = "#0E0E0E", bg = "#E26D76", gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	command = {
		a = { fg = "#0E0E0E", bg = "#86D8C7", gui = "bold" },
		b = { fg = fg, bg = panel },
		c = { fg = fg_dim, bg = bg },
	},
	inactive = {
		a = { fg = fg_dim, bg = "#1a1a1a", gui = "bold" },
		b = { fg = fg_dim, bg = "#1a1a1a" },
		c = { fg = fg_dim, bg = "#1a1a1a" },
	},
}
