local line_ok, wk = pcall(require, "which-key")
if not line_ok then
	return
end

wk.add({
	{ "<leader>f", group = "Files" }, -- group
	{ "<leader>t", group = "File Tree" }, -- group
	{ "<leader>c", group = "Comment Code" }, -- comments
})

--spec = {
--  { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
--  { '<leader>d', group = '[D]ocument' },
--  { '<leader>r', group = '[R]ename' },
--  { '<leader>s', group = '[S]earch' },
--  { '<leader>w', group = '[W]orkspace' },
--  { '<leader>t', group = '[T]oggle' },
--  { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
--},
