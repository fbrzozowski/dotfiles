local line_ok, conform = pcall(require, "conform")
if not line_ok then
    return
end

conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },
        kotlin = { "ktlint" },
    },
})

vim.keymap.set({ "n", "v" }, "<leader>l", function()
            conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    })
end)
