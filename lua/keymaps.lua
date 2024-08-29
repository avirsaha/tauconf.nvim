local opts = { noremap = true, silent = true }

local map = require('utils').keymap -- Creating alias

-- Set leader key to space
-- vim.g.mapleader = ' '  -- This is set from settings.lua

-- Normal mode mappings
-- vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
-- vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>pv', vim.cmd.Ex, opts)
map('n', '<C-Up>', 'dkkp', opts)
map('n', '<C-Down>', 'djjp', opts)
map('n', '<leader>-', '^i-- <Esc>', opts)
map('n', '<leader>/', '^i// <Esc>', opts)
map('n', '<leader>#', '^i# <Esc>', opts)
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, opts)
-- vim.keymap.set('n', '<C-Up>', 'dkkp', opts)
-- vim.keymap.set('n', '<C-Down>', 'djjp', opts)

-- Insert mode mappings
-- vim.keymap.set('i', 'jk', '<Esc>', opts)
-- map('i', '<leader>em', '<Esc>', opts)

-- Visual mode mappings
-- vim.keymap.set('v', '<', '<gv', opts)
-- vim.keymap.set('v', '>', '>gv', opts)
map('v', '<leader>em', '<Esc>', opts)

-- Plugin specific keymaps can be found in there respective config files.
