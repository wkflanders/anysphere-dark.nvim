local M = {}

local util = require("anysphere.util")
local palette = require("anysphere.palette")
local styles = require("anysphere.styles")

-- Default options
M.options = {
	transparent = false,
	bold = true,
	italic = true,
	style = {
		boolean = "bold",
		number = "none",
		float = "none",
		error = "bold",
		comments = "italic",
		conditionals = "none",
		functions = "none",
		headings = "bold",
		operators = "none",
		strings = "italic",
		variables = "none",
		-- keywords
		keywords = "none",
		keyword_return = "italic",
		keywords_loop = "none",
		keywords_label = "none",
		keywords_exception = "none",
		-- builtin
		builtin_constants = "bold",
		builtin_functions = "none",
		builtin_types = "bold",
		builtin_variables = "none",
	},
	plugins = {
		cmp = { match = "bold", match_fuzzy = "bold" },
		telescope = { match = "bold" },
		lsp = {
			diagnostic_error = "bold",
			diagnostic_hint = "none",
			diagnostic_info = "italic",
			diagnostic_ok = "none",
			diagnostic_warn = "bold",
		},
	},
	-- User overrides
	colors = {}, -- { bg = "#...", fg = "#..." } etc.
	on_highlights = function(_, _) end, -- function(hl, c) end
}

--- Setup user options
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

--- Build all highlights
local function build_highlights(c, o)
	local hl = {}

	-- Core editor & syntax
	require("anysphere.highlights.core")(hl, c, o, styles)

	-- Treesitter + LSP semantic token links
	require("anysphere.highlights.treesitter")(hl, c, o, styles)

	-- LSP diagnostics, inlay hints, etc.
	require("anysphere.highlights.lsp")(hl, c, o, styles)

	-- Plugins
	require("anysphere.highlights.cmp")(hl, c, o, styles)
	require("anysphere.highlights.telescope")(hl, c, o, styles)
	require("anysphere.highlights.snacks")(hl, c, o, styles)
	require("anysphere.highlights.misc")(hl, c, o, styles)
	require("anysphere.highlights.ibl")(hl, c, o, styles)
	require("anysphere.highlights.trouble")(hl, c, o, styles)
	require("anysphere.highlights.whichkey")(hl, c, o, styles)
	require("anysphere.highlights.bufferline")(hl, c, o, styles)
	require("anysphere.highlights.mason")(hl, c, o, styles)
	require("anysphere.highlights.lazy")(hl, c, o, styles)
	require("anysphere.highlights.dap")(hl, c, o, styles)
	require("anysphere.highlights.ts_context")(hl, c, o, styles)
	require("anysphere.highlights.illuminate")(hl, c, o, styles)
	require("anysphere.highlights.todo")(hl, c, o, styles)

	-- User hook
	if type(o.on_highlights) == "function" then
		pcall(o.on_highlights, hl, c)
	end

	-- Apply
	for group, spec in pairs(hl) do
		util.hi(group, spec)
	end
end

--- Load the theme
function M.load(scheme_name)
	local o = M.options
	local c = palette.build(o)

	vim.g.colors_name = scheme_name or "anysphere"

	-- Transparent
	if o.transparent then
		c.bg = "NONE"
	end

	-- Apply highlights
	build_highlights(c, o)
end

return M
