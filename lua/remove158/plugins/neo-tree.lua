return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree reveal<CR>", desc = "Open Neo-tree files" },
	},
	config = {
		source_selector = {
			winbar = true,
		},
		filesystem = {
			filtered_items = {
				always_show = { -- remains visible even if other settings would normally hide it
					".gitignore",
					".env",
				},
			},
			follow_current_file = {
				enabled = true, -- This will find and focus the file in the active buffer every time
			},
		},
		window = {
			mappings = {
				["?"] = { "show_help", config = { prefix_key = "q" } },
			},
		},
	},
}
