return function(hl, c, o, S)
	hl.DapBreakpoint = { fg = c.red }
	hl.DapBreakpointCondition = { fg = c.orange }
	hl.DapStopped = { fg = c.green }
	hl.DapLogPoint = { fg = c.magenta }
	hl.DapUIVariable = { fg = c.fg }
	hl.DapUIScope = { fg = c.blue }
	hl.DapUIType = { fg = c.teal }
	hl.DapUIDecoration = { fg = c.border }
	hl.DapUIThread = { fg = c.green }
	hl.DapUIStoppedThread = { fg = c.green, bold = true }
	hl.DapUIBreakpointsPath = { fg = c.blue }
	hl.DapUILineNumber = { fg = c.fg_dim }
	hl.DapUIFloatNormal = { fg = c.fg, bg = c.bg_float }
	hl.DapUIFloatBorder = { fg = c.border, bg = c.bg_float }
	hl.DapUIWatchesEmpty = { fg = c.red }
	hl.DapUIWatchesValue = { fg = c.fg }
	hl.DapUIWatchesError = { fg = c.red }
end
