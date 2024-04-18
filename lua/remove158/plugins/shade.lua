return {
	"sunjon/shade.nvim",
	config = function()
		require("shade").setup({
			overlay_opacity = 30,
			opacity_step = 1,
			keys = {
				brightness_up = "<C-Up>",
				brightness_down = "<C-Down>",
			},
		})
	end,
}
