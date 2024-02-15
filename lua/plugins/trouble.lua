return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require('trouble').setup({})

			vim.keymap.set("n", "<leader>t", function() require('trouble').toggle() end, {})
			vim.keymap.set("n", "<C-[>", function() require('trouble').previous({ jump = true, skip_group = true }) end,
				{})
			vim.keymap.set("n", "<C-]>", function() require('trouble').next({ jump = true, skip_group = true }) end,
				{})
		end
	}
}
