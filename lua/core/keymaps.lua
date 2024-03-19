vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
