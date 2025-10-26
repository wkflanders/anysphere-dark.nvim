local M = {}

local default_colors = {
	bg = "#181818",
	bg_alt = "#1d1d1d",
	bg_float = "#1d1d1d",
	line = "#383838",
	visual = "#2a282a",
	border = "#383838",
	fg = "#d6d6dd",
	fg_dim = "#a6a6a6",
	comment = "#6d6d6d",
	blue = "#4c9df3",
	cyan = "#82d2ce",
	teal = "#83d6c5",
	green = "#15ac91",
	yellow = "#e5b95c",
	orange = "#ea7620",
	red = "#f14c4c",
	magenta = "#e567dc",
	lilac = "#aaa0fa",
	purple = "#af9cff",
	gold = "#E3C893",
	string = "#e394dc",
	number = "#ebc88d",
	function_fg = "#efb080",
	type_fg = "#87c3ff",
	property_fg = "#AA9BF5",
	search = "#163764",
	incsearch = "#194176",
	selection = "#163761",
	diag_info = "#228df2",
	diag_warn = "#ea7620",
	diag_error = "#f14c4c",
	diag_hint = "#aaa0fa",
}

function M.build(opts)
	opts = opts or {}
	local colors = vim.tbl_extend("force", default_colors, opts.colors or {})
	return colors
end

return M
