return function(hl, c, o, S)
	hl.DiagnosticError = { fg = c.red }
	hl.DiagnosticWarn = { fg = c.orange }
	hl.DiagnosticInfo = { fg = c.cyan }
	hl.DiagnosticHint = { fg = c.teal }
	hl.DiagnosticOk = { fg = c.green }

	hl.DiagnosticUnderlineError = { undercurl = true, sp = c.red }
	hl.DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange }
	hl.DiagnosticUnderlineInfo = { undercurl = true, sp = c.cyan }
	hl.DiagnosticUnderlineHint = { undercurl = true, sp = c.teal }

	hl.LspInlayHint = { fg = c.fg_dim, bg = "#1A1A1A", italic = true }
end
