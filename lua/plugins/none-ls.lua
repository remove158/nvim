return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("LspFormatting", {}),
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
}
