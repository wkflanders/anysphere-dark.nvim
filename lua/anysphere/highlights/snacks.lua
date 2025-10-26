return function(hl, c, o, S)
	hl.SnacksTitle = { fg = c.gold, bg = c.bg_float, bold = true }
	hl.SnacksPickerNormal = { fg = c.fg, bg = c.bg_float }
	hl.SnacksPickerSelection = { fg = "#FFFFFF", bg = c.visual, bold = true }
	hl.SnacksPickerMatch = { fg = c.magenta, bold = true }
	hl.SnacksExplorerNormal = { fg = c.fg, bg = c.bg }
	hl.SnacksExplorerSelection = { fg = "#FFFFFF", bg = c.visual, bold = true }
end
