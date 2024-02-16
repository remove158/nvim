return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"williamboman/mason.nvim",
		"hrsh7th/cmp-nvim-lsp",
		-- lsp signature
		"ray-x/lsp_signature.nvim",
		-- fidget
		"j-hui/fidget.nvim",
	},
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		require('mason').setup()
		require('fidget').setup()
		require('lsp_signature').setup()
		require('mason-lspconfig').setup({
			ensure_installed = {
				-- lua
				"lua_ls",
				-- typescript
				"tsserver",
				"eslint",
				-- golang
				"gopls",
				"golangci_lint_ls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities
					})
				end,
				-- to ignore vim diagnostics error
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" }
								}
							}

						}

					})
				end,
			}
		})
	end
}
