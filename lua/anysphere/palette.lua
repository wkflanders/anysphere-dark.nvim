local M = {}

-- Base Anysphere Dark palette
local base = {
	bg = "#141414",
	bg_alt = "#181818",
	bg_float = "#131313",
	fg = "#E4E6EA",
	fg_dim = "#B9BDC6",
	comment = "#7A7A8C",
	gold = "#E3C893",
	magenta = "#E394DC",
	blue = "#8DB8FF",
	cyan = "#7ED0D3",
	teal = "#86D8C7",
	red = "#E26D76",
	orange = "#E7C888",
	green = "#0FA287",
	border = "#2A2A2A",
	visual = "#2B2B2B",
	search = "#3C566E",
	incsearch = "#2E4152",
}

local function merged(a, b)
	return vim.tbl_deep_extend("force", a, b or {})
end

function M.build(opts)
	-- allow user overrides via opts.colors
	return merged(vim.deepcopy(base), opts.colors or {})
end

return M
