require("fxb.remap")
require("fxb.lsp")
require("fxb.gitsigns")
require("fxb.feline")
require("fxb.nvim-tree")

vim.cmd('syntax on')

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber= true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.mouse = alt

--treesitter-code-folding
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

require("todo-comments").setup()
require('onedark').setup {
    style = 'cool'
}
require('onedark').load()

local neogit = require('neogit')
neogit.setup {}
