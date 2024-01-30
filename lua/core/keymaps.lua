vim.g.mapleader = " "

local kmap = vim.keymap -- for conciseness

-- general keymaps

kmap.set("i", "jk", "<ESC>")

kmap.set("v", "jk", "<ESC>")

kmap.set("n", "<leader>nh", ":nohl<CR>")

kmap.set("n", "x", '"_x"')

kmap.set("n", "<leader>+", "<C-a>")
kmap.set("n", "<leader>-", "<C-x>")

-- managing window
kmap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
kmap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
kmap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
kmap.set("n", "<leader>sx", ":close<CR>") --close current split window

-- managing tabs
kmap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
kmap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
kmap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
kmap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
kmap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim tree
kmap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
