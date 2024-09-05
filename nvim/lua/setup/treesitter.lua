local line_ok, treesitter = pcall(require, "treesitter")
if not line_ok then
	return
end

local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = {
		"kotlin",
	},
})
