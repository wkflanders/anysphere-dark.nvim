local M = {}

local default_colors = {
	bg = "#1a1a1a",
	bg_alt = "#141414",
	bg_float = "#141414",
	line = "#292929",
	visual = "#383838",
	border = "#2A2A2A",

	fg = "#D6D6DD",
	fg_dim = "#CCCCCC",
	comment = "#6d6d6d",

	cyan = "#4EC9B0",
	blue = "#81A1C1",
	green = "#A3BE8C",
	red = "#BF616A",
	yellow = "#EBCB8B",

	magenta = "#C586C0",
	purple = "#AA9BF5",
	teal = "#4EC9B0",
	orange = "#CE9178",
	gold = "#DCDCAA",

	string = "#CE9178",
	number = "#B5CEA8",

	function_fg = "#DCDCAA",
	type_fg = "#4EC9B0",
	property_fg = "#9CDCFE",
	link_blue = "#4C9DF3",

	search = "#465C63",
	incsearch = "#37464B",
	selection = "#383838",

	diag_info = "#88C0D0",
	diag_warn = "#EBCB8B",
	diag_error = "#BF616A",
	diag_hint = "#83D6C5",

	git_add = "#15ac91",
	git_mod = "#e5b95c",
	git_del = "#f14c4c",
}

function M.build(opts)
	opts = opts or {}
	local colors = vim.tbl_extend("force", default_colors, opts.colors or {})
	return colors
end

return M
