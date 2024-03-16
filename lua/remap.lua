-- leader
vim.g.mapleader = " "

-- navigate vim pane
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- navigate cmd
vim.keymap.set("c", "<C-j>", "<right>")
vim.keymap.set("c", "<C-k>", "<left>")

-- Ex
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- moveline
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- page scroll middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

--jump
vim.keymap.set("n", "\"", "/\"\\|\'\\|`<Cr>:nohlsearch<CR>zz")
vim.keymap.set("n", "\'", "/\"\\|\'\\|`<Cr>NN:nohlsearch<CR>zz")
vim.keymap.set("n", "}", "/}\\|{<Cr>:nohlsearch<CR>zz")
vim.keymap.set("n", "{", "/}\\|{<Cr>NN:nohlsearch<CR>zz")
vim.keymap.set("n", ")", "/)\\|(<Cr>:nohlsearch<CR>zz")
vim.keymap.set("n", "(", "/)\\|(<Cr>NN:nohlsearch<CR>zz")

-- search term midde
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--
vim.keymap.set("n", "ZQ", ":qa!<CR>")
vim.keymap.set("n", "ZZ", ":wq!<CR>")

-- Ctrls
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<leader>r", ":e<CR>")

-- Math
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "_", "<C-x>")


-- Visual
vim.keymap.set("n", "<C-a>", "gg<S-v>G")


-- Tab
vim.keymap.set("n", "te", ":tabedit<Cr>")
vim.keymap.set("n", "tq", ":tabclose<Cr>")
vim.keymap.set("n", "<S-l>", ":tabnext<Cr>")
vim.keymap.set("n", "<S-h>", ":tabprevious<Cr>")
