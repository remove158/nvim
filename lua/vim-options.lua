-- vim ui
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu")

-- clipboard
vim.cmd("set clipboard+=unnamedplus")


-- leader
vim.g.mapleader = " "

-- navigate vim pane
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- Ex
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")


-- Terminal
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>")

