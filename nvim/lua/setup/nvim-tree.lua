local line_ok, tree = pcall(require, "nvim-tree")
if not line_ok then
	return
end

tree.setup({
  sort_by = "case_sensitive",
  update_focused_file = { enable = true },
  view = {
    width = 50,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
