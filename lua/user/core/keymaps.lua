local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "



--window navigation

keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)

--quit and save
keymap("n", "<Leader>q", ":q<CR>", opts)
keymap("n", "<Leader>w", ":w<CR>", opts)


--side menu
keymap("n","<Leader>o", ":NvimTreeFocus<CR>",opts)
keymap("n","<Leader>e", ":NvimTreeToggle<CR>",opts)

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup{ defaults = {file_ignore_patterns = {"./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*"}} }
