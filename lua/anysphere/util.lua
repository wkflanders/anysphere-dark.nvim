local M = {}

local function normalize(spec)
	if not spec then
		return {}
	end
	local out = {}
	local allowed = {
		fg = true,
		bg = true,
		sp = true,
		blend = true,
		nocombine = true,
		bold = true,
		italic = true,
		underline = true,
		undercurl = true,
		underdouble = true,
		underdotted = true,
		underdashed = true,
		strikethrough = true,
		standout = true,
		reverse = true,
		link = true,
		default = true,
	}
	for k, v in pairs(spec) do
		if allowed[k] then
			out[k] = v
		end
	end
	local gui = spec.gui
	if type(gui) == "string" and gui:lower() ~= "none" then
		for attr in gui:gmatch("[^,%s]+") do
			attr = attr:lower()
			if attr == "bold" then
				out.bold = true
			elseif attr == "italic" then
				out.italic = true
			elseif attr == "underline" then
				out.underline = true
			elseif attr == "undercurl" then
				out.undercurl = true
			elseif attr == "strikethrough" or attr == "strike" then
				out.strikethrough = true
			elseif attr == "inverse" or attr == "reverse" then
				out.reverse = true
			end
		end
	end
	return out
end

function M.hi(group, spec)
	vim.api.nvim_set_hl(0, group, normalize(spec))
end

function M.link(from, to)
	vim.api.nvim_set_hl(0, from, { link = to, default = false })
end

return M
