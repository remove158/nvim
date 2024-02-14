return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "williamboman/mason.nvim",
        "ray-x/lsp_signature.nvim",
    },
    config = function()
        require('mason').setup()
        require('lsp_signature').setup()
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

