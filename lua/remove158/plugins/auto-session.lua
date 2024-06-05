return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/projects", "~/downloads", "/" },
			post_restore_cmds = { "Neotree show" },
			pre_save_cmds = { "Neotree close" },
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "[W]indow [R]estore session" }) -- restore last workspace session for current directory
	end,
}
