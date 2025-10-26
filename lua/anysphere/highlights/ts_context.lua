return function(hl, c, o, S)
	hl.TreesitterContext = { bg = c.bg_alt }
	hl.TreesitterContextLineNumber = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TreesitterContextSeparator = { fg = c.border }
end
