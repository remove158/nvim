return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		require("which-key").setup()
		require("which-key").register({
			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
			["<leader>f"] = { name = "[F]ind", _ = "which_key_ignore" },
			["<leader>l"] = { name = "[L]SP", _ = "which_key_ignore" },
			["<leader>s"] = { name = "[S]plit", _ = "which_key_ignore" },
			["<leader>w"] = { name = "[W]indow", _ = "which_key_ignore" },
		})
	end,
}
