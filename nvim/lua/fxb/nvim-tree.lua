require("nvim-tree").setup({
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
