-- vim ui
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu")


-- leader
vim.g.leader = " "

-- navigate vim pane
vim.keymap.set("n", "<C-h>", ":window h<CR>")
vim.keymap.set("n", "<C-j>", ":window j<CR>")
vim.keymap.set("n", "<C-k>", ":window k<CR>")
vim.keymap.set("n", "<C-l>", ":window l<CR>")

-- Ex
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
