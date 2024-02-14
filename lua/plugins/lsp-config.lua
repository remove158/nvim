return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { 
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                -- lua
                "lua_ls",
                -- typescript
                "tsserver",
                "eslint",
                -- golang
                "gopls",
                "golangci_lint_ls",
            },
            handlers =  {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                end
            }
        })

    end
}

