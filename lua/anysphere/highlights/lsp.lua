return function(hl, c, o, S)
	hl.DiagnosticError = { fg = c.diag_error }
	hl.DiagnosticWarn = { fg = c.diag_warn }
	hl.DiagnosticInfo = { fg = c.diag_info }
	hl.DiagnosticHint = { fg = c.diag_hint }
	hl.DiagnosticOk = { fg = c.green }
	hl.DiagnosticUnderlineError = { undercurl = true, sp = c.diag_error }
	hl.DiagnosticUnderlineWarn = { undercurl = true, sp = c.diag_warn }
	hl.DiagnosticUnderlineInfo = { undercurl = true, sp = c.diag_info }
	hl.DiagnosticUnderlineHint = { undercurl = true, sp = c.diag_hint }
	hl.LspInlayHint = { fg = "#838383", bg = "#2b2b2b", italic = true }
end
