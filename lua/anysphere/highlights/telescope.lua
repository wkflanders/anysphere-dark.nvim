return function(hl, c, o, S)
	hl.TelescopeNormal = { fg = c.fg, bg = c.bg_alt }
	hl.TelescopeBorder = { fg = c.border, bg = c.bg_alt }
	hl.TelescopeSelection = { fg = "#FFFFFF", bg = c.visual, bold = true }
	hl.TelescopeMatching = { fg = c.magenta, bold = (o.plugins.telescope or {}).match == "bold" }
	hl.TelescopePromptTitle = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.TelescopeResultsTitle = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TelescopePreviewTitle = { fg = c.fg_dim, bg = c.bg_alt }
end
