local line_ok, treesitter = pcall(require, "nvim-treesitter")
if not line_ok then
	return
end

-- nvim-treesitter `main` branch: it only installs parsers/queries.
-- Highlighting itself is Neovim's, enabled per buffer below.
treesitter.install({
	"kotlin",
})

-- Start treesitter highlighting for any filetype that has a parser
-- (installed above or bundled with Neovim); silently skip the rest.
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("setup-treesitter", { clear = true }),
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})
