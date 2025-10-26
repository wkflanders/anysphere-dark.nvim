local ok, theme = pcall(require, "anysphere")
if ok then
	theme.load("anysphere")
else
	vim.notify("[anysphere] failed to load theme module", vim.log.levels.ERROR)
end
