local line_ok, fidget = pcall(require, "fidget")
if not line_ok then
    return
end


fidget.setup({
    integration = {
        ["nvim-tree"] = {
            enable = true, -- Integrate with nvim-tree/nvim-tree.lua (if installed)
        },
    }
})
