return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- configure lualine with modified theme
		lualine.setup({
			options = { theme = "catppuccin" },
			sections = {
				lualine_b = { "branch" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = {
					{ "filetype" },
				},
				lualine_y = {},
				lualine_z = { "hostname" },
			},
			inactive_sections = {},
		})
	end,
}
