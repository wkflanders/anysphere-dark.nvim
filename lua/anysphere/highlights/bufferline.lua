return function(hl, c, o, S)
	local panel = "#181818"
	hl.BufferLineFill = { bg = panel }
	hl.BufferLineBackground = { fg = c.fg_dim, bg = panel }
	hl.BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true }
	hl.BufferLineBufferVisible = { fg = c.fg, bg = panel }
	hl.BufferLineSeparator = { fg = c.border, bg = panel }
	hl.BufferLineSeparatorVisible = { fg = c.border, bg = panel }
	hl.BufferLineSeparatorSelected = { fg = c.border, bg = c.bg }
	hl.BufferLineModified = { fg = c.orange, bg = panel }
	hl.BufferLineModifiedSelected = { fg = c.orange, bg = c.bg }
	hl.BufferLineCloseButton = { fg = c.fg_dim, bg = panel }
	hl.BufferLineCloseButtonSelected = { fg = c.fg, bg = c.bg }
	hl.BufferLineDiagnostic = { fg = c.fg_dim, bg = panel }
	hl.BufferLineError = { fg = c.red, bg = panel }
	hl.BufferLineWarning = { fg = c.orange, bg = panel }
	hl.BufferLineInfo = { fg = c.cyan, bg = panel }
end
