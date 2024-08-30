local opts = { noremap = true, silent = true }

--local map = require('utils').keymap -- Creating alias

-- Set leader key to space
-- vim.g.mapleader = ' '  -- This is set from settings.lua

-- Normal mode mappings
-- vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
-- vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, opts)
vim.keymap.set('n', '<C-k>', 'ddkkp', opts)
vim.keymap.set('n', '<C-j>', 'ddp', opts)
vim.keymap.set('n', '<leader>-', '^i-- <Esc>', opts)
vim.keymap.set('n', '<leader>/', '^i// <Esc>', opts)
vim.keymap.set('n', '<leader>#', '^i# <Esc>', opts)
vim.keymap.set('n', '<leader>w', vim.cmd.w, opts)
-- Increase/Decrease horizontal split height
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', opts) -- Increase height
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', opts) -- Decrease height

-- Increase/Decrease vertical split width
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', opts) -- Increase width
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', opts) -- Decrease width
--Insert mode mappings
--vim.keymap.set('i', 'jk', '<Esc>', opts)
--map('i', '<leader>em', '<Esc>', opts)

-- Visual mode mappings
-- vim.keymap.set('v', '<', '<gv', opts)
-- vim.keymap.set('v', '>', '>gv', opts)
--map('v', '<leader>em', '<Esc>', opts)

-- Plugin specific keymaps can be found in there respective config files.
