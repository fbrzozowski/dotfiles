local line_ok, lsp = pcall(require, "lsp-zero")
if not line_ok then
    return
end

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        -- this first function is the "default handler"
        -- it applies to every language server without a "custom handler"
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        -- this is the "custom handler" for `lua_ls`
        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                on_init = function(client)
                    lsp.nvim_lua_settings(client, {})
                end,
            })
        end,
    }
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    formatting = lsp.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        -- scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<Tab>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Tab>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item(cmp_select_opts)
                cmp.complete()
            else
            end
        end),
    }),
})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
    lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»',
    })
end)

--lsp.setup()

---- You need to setup `cmp` after lsp-zero
--local cmp = require('cmp')
--local cmp_action = require('lsp-zero').cmp_action()

--cmp.setup({
--mapping = {
---- `Enter` key to confirm completion
--['<Tab>'] = cmp.mapping.confirm({select = false}),

---- Ctrl+Space to trigger completion menu
--['<C-Tab>'] = cmp.mapping(function ()
--if cmp.visible() then
--cmp.select_next_item(cmp_select_opts)
--cmp.complete()
--else
--end
--end),

---- Navigate between snippet placeholder
--['<C-f>'] = cmp_action.luasnip_jump_forward(),
--['<C-b>'] = cmp_action.luasnip_jump_backward(),
--}
--})
