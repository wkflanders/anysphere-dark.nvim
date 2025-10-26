return function(hl, c, o, S)
	hl.BlinkCmpMenu = { fg = c.fg, bg = c.bg_float }
	hl.BlinkCmpMenuBorder = { fg = c.border, bg = c.bg_float }
	hl.BlinkCmpLabel = { fg = c.fg }
	hl.BlinkCmpLabelDeprecated = { fg = "#7C7F88", strikethrough = true }
	hl.BlinkCmpLabelMatch = { fg = "#FFFFFF", bold = true }
	hl.BlinkCmpScrollBarThumb = { bg = c.border }
	hl.BlinkCmpKind = { fg = c.cyan }
	hl.BlinkCmpKindFunction = { fg = c.gold }
	hl.BlinkCmpKindMethod = { fg = c.gold }
	hl.BlinkCmpKindConstructor = { fg = c.gold }
	hl.BlinkCmpKindClass = { fg = c.blue }
	hl.BlinkCmpKindInterface = { fg = c.blue }
	hl.BlinkCmpKindStruct = { fg = c.blue }
	hl.BlinkCmpKindEnum = { fg = c.blue }
	hl.BlinkCmpKindTypeParameter = { fg = c.blue }
	hl.BlinkCmpKindVariable = { fg = c.orange }
	hl.BlinkCmpKindField = { fg = c.orange }
	hl.BlinkCmpKindProperty = { fg = c.orange }
	hl.BlinkCmpKindConstant = { fg = c.orange }
	hl.BlinkCmpKindKeyword = { fg = c.cyan }
	hl.BlinkCmpKindModule = { fg = c.teal }
	hl.BlinkCmpKindFile = { fg = c.fg_dim }

	hl.CmpItemAbbr = { fg = c.fg }
	hl.CmpItemAbbrDeprecated = { fg = "#7C7F88", strikethrough = true }
	hl.CmpItemAbbrMatch = { fg = "#FFFFFF", bold = true }
	hl.CmpItemAbbrMatchFuzzy = { fg = "#FFFFFF", bold = (o.plugins.cmp or {}).match_fuzzy == "bold" }
	hl.CmpItemMenu = { fg = c.fg_dim }
	hl.CmpItemKind = { fg = c.magenta }
end
