return function(hl, c, o, S)
	hl.TODO = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.FIX = { fg = "#0E0E0E", bg = c.red, bold = true }
	hl.HACK = { fg = "#0E0E0E", bg = c.magenta, bold = true }
	hl.WARN = { fg = "#0E0E0E", bg = c.orange, bold = true }
	hl.NOTE = { fg = "#0E0E0E", bg = c.blue, bold = true }

	hl.TodoFg = { fg = c.fg }
	hl.TodoBgFIX = { bg = c.red }
	hl.TodoBgHACK = { bg = c.magenta }
	hl.TodoBgWARN = { bg = c.orange }
	hl.TodoBgNOTE = { bg = c.blue }
	hl.TodoBgTODO = { bg = c.gold }
end
