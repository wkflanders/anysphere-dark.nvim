return function(hl, c, o, S)
	hl.WhichKey = { fg = c.magenta, bold = true }
	hl.WhichKeyGroup = { fg = c.blue }
	hl.WhichKeyDesc = { fg = c.fg }
	hl.WhichKeySeparator = { fg = c.fg_dim }
	hl.WhichKeyFloat = { fg = c.fg, bg = c.bg_float }
	hl.WhichKeyBorder = { fg = c.border, bg = c.bg_float }
end
