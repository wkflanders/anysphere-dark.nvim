local M = {}

local function to_gui(flag)
	if flag == "bold" then
		return "bold"
	elseif flag == "italic" then
		return "italic"
	elseif flag == "none" or flag == "NONE" then
		return nil
	end
	return nil
end

-- Map a style key
function M.apply_style(spec, key, opts)
	local s = opts.style or {}
	local gui = to_gui(s[key])
	if gui then
		spec.gui = spec.gui and (spec.gui .. "," .. gui) or gui
	end
	return spec
end

return M
