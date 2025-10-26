return function(hl, c, o, S)
	-- Notify/Noice
	hl.NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_float }
	hl.NoiceCmdlineIcon = { fg = c.gold }
	hl.NotifyBackground = { bg = c.bg_float }
	hl.NotifyINFOBorder = { fg = c.cyan }
	hl.NotifyWARNBorder = { fg = c.orange }
	hl.NotifyERRORBorder = { fg = c.red }
	hl.NotifyDEBUGBorder = { fg = c.magenta }

	-- Gitsigns
	hl.GitSignsAdd = { fg = c.green }
	hl.GitSignsChange = { fg = c.orange }
	hl.GitSignsDelete = { fg = c.red }

	-- Neo-tree minimal polish (keeps neutral chrome)
	hl.NeoTreeTitleBar = { fg = "#0E0E0E", bg = c.gold, bold = true }
	hl.NeoTreeDirectoryName = { fg = c.fg }
	hl.NeoTreeDirectoryIcon = { fg = c.blue }
	hl.NeoTreeGitAdded = { fg = c.green }
	hl.NeoTreeGitModified = { fg = c.orange }
	hl.NeoTreeGitDeleted = { fg = c.red }
	hl.NeoTreeGitIgnored = { fg = c.fg_dim }
end
