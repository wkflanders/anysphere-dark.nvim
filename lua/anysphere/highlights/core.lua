return function(hl, c, o, S)
	local function S_(spec, key)
		return S.apply_style(spec, key, o)
	end

	hl.Normal = { fg = c.fg, bg = c.bg }
	hl.NormalNC = { fg = c.fg, bg = c.bg }
	hl.SignColumn = { bg = c.bg }
	hl.VertSplit = { fg = c.border, bg = c.bg }
	hl.WinSeparator = { fg = c.border, bg = c.bg }
	hl.LineNr = { fg = "#555555" }
	hl.CursorLineNr = { fg = c.fg, bold = true }
	hl.CursorLine = { bg = c.bg_alt }
	hl.CursorColumn = { bg = c.bg_alt }
	hl.Visual = { bg = c.visual }
	hl.Search = { bg = c.search, fg = "#0e0e0e" }
	hl.IncSearch = { bg = c.incsearch, fg = c.fg }
	hl.MatchParen = { bg = "#2A2A2A", bold = true }
	hl.Folded = { fg = c.fg_dim, bg = "#1A1A1A" }
	hl.FoldColumn = { bg = c.bg }
	hl.Pmenu = { fg = c.fg, bg = c.bg_float }
	hl.PmenuSel = { fg = "#FFFFFF", bg = c.visual, bold = true }
	hl.PmenuSbar = { bg = "#1A1A1A" }
	hl.PmenuThumb = { bg = "#3A3A3A" }
	hl.StatusLine = { fg = c.fg, bg = c.bg_alt }
	hl.StatusLineNC = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TabLine = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TabLineSel = { fg = c.fg, bg = c.bg }
	hl.TabLineFill = { bg = c.bg_alt }
	hl.Title = { fg = c.gold, bold = true }
	hl.ErrorMsg = { fg = c.red, bold = true }
	hl.WarningMsg = { fg = c.orange }
	hl.MoreMsg = { fg = c.gold }
	hl.Question = { fg = c.cyan }
	hl.QuickFixLine = { bg = "#1c1c1c", bold = true }

	hl.Comment = S_({ fg = c.comment, italic = true }, "comments")
	hl.Constant = S_({ fg = c.orange }, "constant")
	hl.String = S_({ fg = "#E0A9E0" }, "strings")
	hl.Character = { fg = "#E0A9E0" }
	hl.Number = S_({ fg = c.orange }, "number")
	hl.Boolean = S_({ fg = c.cyan }, "boolean")
	hl.Identifier = S_({ fg = c.fg }, "variables")
	hl.Function = S_({ fg = c.gold }, "functions")
	hl.Statement = { fg = c.cyan }
	hl.Conditional = S_({ fg = c.cyan }, "conditionals")
	hl.Repeat = { fg = c.cyan }
	hl.Label = { fg = c.magenta }
	hl.Operator = S_({ fg = c.fg }, "operators")
	hl.Keyword = S_({ fg = c.cyan }, "keywords")
	hl.Exception = { fg = c.cyan }
	hl.PreProc = { fg = c.teal }
	hl.Include = { fg = c.teal }
	hl.Define = { fg = c.teal }
	hl.Macro = { fg = c.teal }
	hl.Type = { fg = c.blue }
	hl.StorageClass = { fg = c.teal }
	hl.Structure = { fg = c.teal }
	hl.Typedef = { fg = c.teal }
	hl.Special = { fg = c.magenta }
	hl.SpecialChar = { fg = c.magenta }
	hl.Tag = { fg = c.blue }
	hl.Delimiter = { fg = c.fg_dim }
	hl.SpecialComment = { fg = c.comment }
	hl.Debug = { fg = c.red }
	hl.Error = S_({ fg = c.red, bold = true }, "error")
	hl.Todo = { fg = c.gold, bold = true }

	hl.NormalFloat = { fg = c.fg, bg = c.bg_float }
	hl.FloatBorder = { fg = c.border, bg = c.bg_float }
	hl.FloatTitle = { fg = c.gold, bg = c.bg_float, bold = true }

	hl.DiffAdd = { fg = c.green, bg = "#0f2f24" }
	hl.DiffChange = { fg = c.orange, bg = "#2a1f0f" }
	hl.DiffDelete = { fg = c.red, bg = "#2f0f0f" }
	hl.DiffText = { fg = c.orange, bg = "#3a2f0f", bold = true }
end
