return function(hl, c, o, S)
	hl.MasonNormal = { fg = c.fg, bg = c.bg_float }
	hl.MasonHeader = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.MasonHeaderSecondary = { fg = "#0E0E0E", bg = c.magenta, bold = true }
	hl.MasonHighlight = { fg = c.gold }
	hl.MasonHighlightBlock = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.MasonHighlightBlockBold = { fg = "#0E0E0E", bg = c.magenta, bold = true }
	hl.MasonMuted = { fg = c.fg_dim }
	hl.MasonMutedBlock = { fg = c.fg, bg = "#1A1A1A" }
	hl.MasonError = { fg = c.red }
	hl.MasonWarning = { fg = c.orange }
	hl.MasonHeading = { fg = c.blue, bold = true }
end
