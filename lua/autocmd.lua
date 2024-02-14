vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set({"i", "n"}, "<C-space>", function() vim.lsp.buf.signature_help() end, opts)
    end
}
)
