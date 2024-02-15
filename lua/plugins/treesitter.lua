return {
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "go", "python" },
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
