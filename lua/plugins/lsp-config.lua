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

				-- prettier
				"prettier",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities
					})
				end,
				-- -- to ignore vim diagnostics error
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
		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				-- vim.keymap.set({ "i", "n" }, "<C-h>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)

				vim.keymap.set('n', '<space>f', function()
					vim.lsp.buf.format { async = true }
				end, opts)
			end
		}
		)
	end
}
