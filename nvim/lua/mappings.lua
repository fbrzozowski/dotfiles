vim.g.mapleader = " "

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fF", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "Find git files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open [Q]uickfix list" })

vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Browse git files" })

-- moving selected lines
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- search in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- system clipboard yank
vim.keymap.set({ "n", "v", "n" }, "<leader>y", '"+y', { desc = "System clipboard yank" })
vim.keymap.set({ "n", "v", "n" }, "<leader>Y", '"+Y', { desc = "System clipboard yank" })

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<Tab>", "<C-w>w", { remap = false, silent = true })
vim.keymap.set("n", "<leader><Tab>", ":w<CR>", { desc = "Save files" })

--tree
vim.keymap.set("n", "<leader>tf", "<leader>:NvimTreeToggle<CR>", { silent = true, desc = "Opens file tree" })
vim.keymap.set("n", "<leader>tt", "<leader>:NvimTreeFocus<CR>", { silent = true, desc = "Focus on file tree" })
vim.keymap.set("n", "<leader>tc", "<leader>:NvimTreeCollapse<CR>", { silent = true, desc = "Closes file tree" })

--vim.keymap.set("n", "<leader>t", ":TodoTrouble<CR>", {silent=true})
vim.keymap.set("n", "T", ":TodoQuickFix<CR>", { silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz>")
vim.keymap.set("n", "<C-u>", "<C-u>zz>")

vim.keymap.set("n", "<Tab>", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
--treesitter code folding
--vim.keymap.set("n", "<C-k>", ":foldclose<CR>", {silent=ture})
--vim.keymap.set("n", "<C-j>", ":foldopen<CR>", {silent=ture})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to harpoon list" })
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, { desc = "Harpoon quick menu" })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Chmod +x" })

-- LSP

vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Show definition" })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to [d]efinition" })
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "Go to [D]eclaration" })
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "Go to [i]plementation" })
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "Go to type definition" })
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "Find references" })
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "Signature help" })
vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename" })
vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", { desc = "Format file" })
vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Show available actions" })

local conform = require("conform")
vim.keymap.set({ "n", "v" }, "<leader>l", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format code (conform)" })
