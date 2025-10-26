return function(hl, c, o, S)
	hl.TroubleNormal = { fg = c.fg, bg = c.bg_float }
	hl.TroubleText = { fg = c.fg }
	hl.TroubleCount = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.TroubleFoldIcon = { fg = c.fg_dim }
	hl.TroubleLocation = { fg = c.fg_dim }
	hl.TroubleFilename = { fg = c.fg }
	hl.TroubleIcon = { fg = c.magenta }
	hl.TroubleSignError = { link = "DiagnosticError" }
	hl.TroubleSignWarn = { link = "DiagnosticWarn" }
	hl.TroubleSignInformation = { link = "DiagnosticInfo" }
	hl.TroubleSignHint = { link = "DiagnosticHint" }
end
