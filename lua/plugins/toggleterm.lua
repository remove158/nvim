return {
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
      local config = require("toggleterm")
      config.setup({})

      -- set kiy binding for ToggleTerm
      vim.keymap.set("n","<C-t>", ":ToggleTerm direction=float<cr>")
    end
  }
}
