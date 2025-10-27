return function(hl, c, o, S)
	hl.Normal = { fg = c.fg, bg = c.bg }
	hl.NormalFloat = { fg = c.fg, bg = c.bg_float }
	hl.FloatBorder = { fg = c.border, bg = c.bg_float }
	hl.FloatTitle = { fg = c.gold, bg = c.bg_float, bold = true }
	hl.Cursor = { fg = c.bg, bg = c.fg }
	hl.CursorLine = { bg = c.line }
	hl.CursorLineNr = { fg = c.gold, bold = true }
	hl.LineNr = { fg = "#858585" }
	hl.SignColumn = { bg = c.bg }
	hl.Visual = { bg = c.visual }
	hl.VisualNOS = { link = "Visual" }
	hl.Search = { bg = c.search }
	hl.IncSearch = { bg = c.incsearch }

	hl.Pmenu = { fg = c.fg, bg = c.bg_float }
	hl.PmenuSel = { fg = "#FFFFFF", bg = c.visual, bold = true }
	hl.PmenuSbar = { bg = c.bg_float }
	hl.PmenuThumb = { bg = c.border }

	hl.StatusLine = { fg = c.fg, bg = c.bg_alt }
	hl.StatusLineNC = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TabLine = { fg = c.fg_dim, bg = c.bg_alt }
	hl.TabLineFill = { bg = c.bg_alt }
	hl.TabLineSel = { fg = "#FFFFFF", bg = c.visual, bold = true }

	hl.Folded = { fg = c.fg_dim, bg = c.bg_alt }
	hl.FoldColumn = { fg = c.fg_dim, bg = c.bg }
	hl.VertSplit = { fg = c.border }
	hl.ColorColumn = { bg = c.line }

	hl.MatchParen = { fg = c.magenta, bold = true, underline = true }
	hl.NonText = { fg = c.fg_dim }
	hl.Whitespace = { fg = "#3A3A3A" }
	hl.SpecialKey = { fg = c.fg_dim }

	hl.Directory = { fg = c.blue, bold = true }
	hl.Title = { fg = c.gold, bold = true }
	hl.Question = { fg = c.green }
	hl.MoreMsg = { fg = c.green }
	hl.ModeMsg = { fg = c.fg }
	hl.WarningMsg = { fg = c.orange }
	hl.ErrorMsg = { fg = c.red }

	hl.DiffAdd = { fg = c.green }
	hl.DiffDelete = { fg = c.red }
	hl.DiffChange = { fg = c.orange }
	hl.DiffText = { fg = c.yellow, bold = true }

	hl.SpellBad = { undercurl = true, sp = c.red }
	hl.SpellCap = { undercurl = true, sp = c.yellow }
	hl.SpellRare = { undercurl = true, sp = c.cyan }
	hl.SpellLocal = { undercurl = true, sp = c.green }

	hl.Comment = S.apply_style({ fg = c.comment }, "comments", o)

	hl.Keyword = S.apply_style({ fg = c.magenta }, "keywords", o)
	hl.Conditional = { fg = c.magenta }
	hl.Repeat = { fg = c.magenta }
	hl.Label = { fg = c.magenta }
	hl.Exception = { fg = c.magenta }
	hl.Statement = { fg = c.magenta }

	hl.Type = S.apply_style({ fg = c.teal }, "builtin_types", o)
	hl.StorageClass = { fg = c.teal }
	hl.Structure = { fg = c.teal }
	hl.Typedef = { fg = c.teal }

	hl.Function = S.apply_style({ fg = c.function_fg }, "functions", o)

	hl.String = S.apply_style({ fg = c.string }, "strings", o)
	hl.Character = { fg = c.string }

	hl.Number = S.apply_style({ fg = c.number }, "number", o)
	hl.Float = S.apply_style({ fg = c.number }, "float", o)
	hl.Boolean = S.apply_style({ fg = "#569CD6", bold = true }, "boolean", o)

	hl.Constant = S.apply_style({ fg = "#4FC1FF" }, "builtin_constants", o)

	hl.Identifier = S.apply_style({ fg = c.fg }, "variables", o)
	hl.Field = { fg = c.property_fg }
	hl.Property = { fg = c.property_fg }
	hl.Parameter = { fg = "#9CDCFE" }

	hl.Operator = S.apply_style({ fg = c.fg }, "operators", o)
	hl.Delimiter = { fg = c.fg }
	hl.Special = { fg = c.cyan }
	hl.SpecialChar = { fg = c.cyan }
	hl.Tag = { fg = c.cyan }
	hl.SpecialComment = { fg = c.comment, italic = true }
	hl.Debug = { fg = c.red }

	hl.PreProc = { fg = c.magenta }
	hl.Include = { fg = c.magenta }
	hl.Define = { fg = c.magenta }
	hl.Macro = { fg = c.magenta }
	hl.PreCondit = { fg = c.magenta }

	hl.Underlined = { underline = true }
	hl.Ignore = { fg = c.fg_dim }
	hl.Error = { fg = c.red, bold = true }
	hl.Todo = { fg = "#0E0E0E", bg = c.gold, bold = true }
end
