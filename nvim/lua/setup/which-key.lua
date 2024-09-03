local line_ok, wk = pcall(require, "which-key")
if not line_ok then
	return
end

wk.add({
  { "<leader>f", group = "Files" }, -- group
  { "<leader>t", group = "File Tree" }, -- group
  { "<leader>c", group = "Comment Code" }, -- comments
})
