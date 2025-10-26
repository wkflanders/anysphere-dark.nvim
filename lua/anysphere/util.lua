local M = {}

function M.hi(group, spec)
	vim.api.nvim_set_hl(0, group, spec or {})
end

function M.link(a, b)
	vim.api.nvim_set_hl(0, a, { link = b })
end

return M
