return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	-- setting the keybinding for LazyGit with 'keys' is recommended in
	-- order to load the plugin when the command is run for the first time
	keys = {
		{ "<C-g>", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
	},
	config = function()
		require("telescope").load_extension("lazygit")
	end,
}
