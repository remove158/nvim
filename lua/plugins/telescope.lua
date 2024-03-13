return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					['ui-select'] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					find_files = {
						find_command = { "rg", "--files", "--hidden" }
					},
				}
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>pd", builtin.lsp_document_symbols, {})
			vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
