return {
	"theprimeagen/harpoon",
	config = function()
		require('harpoon').setup()
		local ui = require('harpoon.ui')
		local mark = require('harpoon.mark')
		vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu)
		vim.keymap.set("n", "<leader>ha", mark.add_file)
		vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
		vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
		vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
	end
}
