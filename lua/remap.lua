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

-- moveline
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- page scroll middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- best remap
vim.keymap.set("x", "<leader>p", [["_dp]])


-- search term middel
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--
vim.keymap.set("n", "ZQ", ":qa!<CR>")
vim.keymap.set("n", "ZZ", ":wq!<CR>")

-- <C-c> and <C-s>
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
