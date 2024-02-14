return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            local config = require("toggleterm")
            config.setup({
                open_mapping = [[<C-t>]],
                shade_filetypes = {},
                direction = "float",
                float_opts = {
                    border = "curved",
                },
            })
            local Terminal = require("toggleterm.terminal").Terminal
            local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

            function _Lazygit_toggle()
                lazygit:toggle()
            end

            vim.api.nvim_set_keymap(
                "n",
                "<C-g>",
                "<cmd>lua _Lazygit_toggle()<CR>",
                { noremap = true, silent = true }
            )
        end,
    },
}
