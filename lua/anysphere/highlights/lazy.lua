return function(hl, c, o, S)
	hl.LazyNormal = { fg = c.fg, bg = c.bg_float }
	hl.LazyH1 = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.LazyButton = { fg = c.fg, bg = c.bg_alt }
	hl.LazyButtonActive = { fg = "#0E0E0E", bg = c.magenta, bold = true }
	hl.LazyComment = { fg = c.fg_dim }
	hl.LazySpecial = { fg = c.magenta }
	hl.LazyProgressDone = { fg = c.green }
	hl.LazyProgressTodo = { fg = c.fg_dim }
end
