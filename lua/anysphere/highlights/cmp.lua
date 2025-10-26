return function(hl, c, o, S)
	hl.CmpItemAbbr = { fg = c.fg }
	hl.CmpItemAbbrDeprecated = { fg = "#7C7F88", strikethrough = true }
	hl.CmpItemAbbrMatch = { fg = "#FFFFFF", bold = true }
	hl.CmpItemAbbrMatchFuzzy = { fg = "#FFFFFF", bold = (o.plugins.cmp or {}).match_fuzzy == "bold" }
	hl.CmpItemMenu = { fg = c.fg_dim }
	hl.CmpItemKind = { fg = c.magenta }
end
