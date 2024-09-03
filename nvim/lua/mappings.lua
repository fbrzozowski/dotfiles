vim.g.mapleader = " "
 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Buffers" })


vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Browse git files"})

-- moving selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- search in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- system clipboard yank
vim.keymap.set({"n", "v", "n"}, "<leader>y", "\"+Y", { desc = "System clipboard yank" })

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<Tab>", "<C-w>w", { remap=false, silent=true })
vim.keymap.set("n", "<leader><Tab>", ":w<CR>", { desc = "Save files" })

--tree
vim.keymap.set("n", "<leader>tf", "<leader>:NvimTreeToggle<CR>", {silent = true, desc = "Opens file tree"})
vim.keymap.set("n", "<leader>tt", "<leader>:NvimTreeFocus<CR>", {silent = true, desc = "Focus on file tree"})
vim.keymap.set("n", "<leader>tc", "<leader>:NvimTreeCollapse<CR>", {silent = true, desc = "Closes file tree"})

--vim.keymap.set("n", "<leader>t", ":TodoTrouble<CR>", {silent=true})
vim.keymap.set("n", "T", ":TodoQuickFix<CR>", {silent=true})

vim.keymap.set("n", "<C-d>", "<C-d>zz>")
vim.keymap.set("n", "<C-u>", "<C-u>zz>")

vim.keymap.set('n', '<Tab>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

--treesitter code folding
--vim.keymap.set("n", "<C-k>", ":foldclose<CR>", {silent=ture})
--vim.keymap.set("n", "<C-j>", ":foldopen<CR>", {silent=ture})

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
vim.keymap.set('n', '<leader>a', mark.add_file, { desc = "Add file to harpoon list" })
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true, desc = "chmod +x"})
