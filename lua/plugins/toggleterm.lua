return {
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
      local config = require("toggleterm")
      config.setup({
        open_mapping = [[<c-t>]],
        shade_filetypes = {},
        direction = 'float',
        float_opts = {
          border = 'curved'
        }
      })

    end
  }
}
