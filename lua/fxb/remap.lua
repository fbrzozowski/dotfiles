vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>pf", function() builtin.grep_string({search = vim.fn.input("Grep > ")}); end)

-- moving selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- search in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- system clipboard yank
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})
vim.keymap.set("n", "<leader>r", "<cmd>!go run %<CR>", {silent = true})
vim.keymap.set("n", "<leader>rk", "<cmd>!kotlinc %<CR>.kt -include-runtime -d %<CR>.jar", {silent = true})

vim.keymap.set("n", "<Tab>", "<C-w>w", { remap=false, silent=true })


--tree
vim.keymap.set("n", "<leader>tt", "<leader>:NvimTreeToggle<CR>", {silent = true})
vim.keymap.set("n", "<leader>tf", "<leader>:NvimTreeFocus<CR>", {silent = true})
vim.keymap.set("n", "<leader>tc", "<leader>:NvimTreeCollapse<CR>", {silent = true})

--TODO
--vim.keymap.set("n", "<leader>t", ":TodoTrouble<CR>", {silent=true})
--vim.keymap.set("n", "<leader>pt", ":TodoTelescope<CR>", {silent=true})

vim.keymap.set("n", "<C-d>", "<C-d>zz>")
vim.keymap.set("n", "<C-u>", "<C-u>zz>")

--treesitter code folding
--vim.keymap.set("n", "<C-k>", ":foldclose<CR>", {silent=ture})
--vim.keymap.set("n", "<C-j>", ":foldopen<CR>", {silent=ture})
