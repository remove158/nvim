local cmp_kinds = {
	Text = '  ',
	Method = '  ',
	Function = '  ',
	Constructor = '  ',
	Field = '  ',
	Variable = '  ',
	Class = '  ',
	Interface = '  ',
	Module = '  ',
	Property = '  ',
	Unit = '  ',
	Value = '  ',
	Enum = '  ',
	Keyword = '  ',
	Snippet = '  ',
	Color = '  ',
	File = '  ',
	Reference = '  ',
	Folder = '  ',
	EnumMember = '  ',
	Constant = '  ',
	Struct = '  ',
	Event = '  ',
	Operator = '  ',
	TypeParameter = '  ',
}

return {
	{
		"hrsh7th/cmp-nvim-lsp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		}
	},
	{
		-- lua snip
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		}
	},

	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require('cmp')
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				formatting = {
					-- vscode icons for cmp panel
					format = function(_, vim_item)
						vim_item.kind = (cmp_kinds[vim_item.kind] or '') .. vim_item.kind
						return vim_item
					end,
				},
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					-- prev
					['<S-Tab>'] = cmp.mapping.select_prev_item(),
					['<C-k>'] = cmp.mapping.select_prev_item(),
					-- next
					['<C-j>'] = cmp.mapping.select_next_item(),
					['<Tab>'] = cmp.mapping.select_next_item(),
					-- abort
					['<Esc>'] = cmp.mapping.abort(),

					-- comfirm
					['<CR>'] = cmp.mapping.confirm({ select = true }),
					['<C-Space>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' }, -- For luasnip users.
				}, {
					{ name = 'buffer' },
				})
			})
		end
	}
}
