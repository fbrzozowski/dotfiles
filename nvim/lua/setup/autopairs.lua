local line_ok, autopairs = pcall(require, "nvim-autopairs")
if not line_ok then
	return
end

autopairs.setup{}
