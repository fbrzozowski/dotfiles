local line_ok, lsp = pcall(require, "lsp-zero")
if not line_ok then
	return
end

-- local lsp lspp.preset({})
lsp.preset({}).on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
	lsp.set_sign_icons({
		error = '✘',
		warn = '▲',
		hint = '⚑',
		info = '»',
	})

end)

lsp.setup()

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Tab>'] = cmp.mapping(function ()
      if cmp.visible() then
        cmp.select_next_item(cmp_select_opts)
        cmp.complete()
      else
      end
    end),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
