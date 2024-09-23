local opts = { noremap = true, silent = true }

-- Normal mode mappings
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, opts)   -- Open file explorer
vim.keymap.set('n', '<C-k>', 'ddkkp', opts)           -- Move line up
vim.keymap.set('n', '<C-j>', 'ddp', opts)             -- Move line down
vim.keymap.set('n', '<leader>-', '^i-- <Esc>', opts)  -- Insert -- at beginning of the line
vim.keymap.set('n', '<leader>/', '^i// <Esc>', opts)  -- Insert // at beginning of the line (comments)
vim.keymap.set('n', '<leader>#', '^i# <Esc>', opts)   -- Insert # at beginning of the line (for shell comments)
vim.keymap.set('n', '<leader>w', vim.cmd.w, opts)     -- Save file
vim.keymap.set('n', '<leader>m', vim.cmd.Mason, opts) -- Open Mason (LSP server management)
vim.keymap.set('n', '<leader>q', vim.cmd.q, opts)     -- Quit Neovim
vim.keymap.set('n', '<leader>dd', vim.cmd.Dashboard, opts)

-- Buffer navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', opts)   -- Go to next buffer
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', opts)   -- Go to previous buffer
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', opts) -- Close current buffer

-- Window management
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts) -- Vertical split window
vim.keymap.set('n', '<leader>sh', ':split<CR>', opts)  -- Horizontal split window
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)      -- Equalize window size
vim.keymap.set('n', '<leader>sx', ':close<CR>', opts)  -- Close current split window

-- Resize splits
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', opts)             -- Increase horizontal split height
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', opts)           -- Decrease horizontal split height
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', opts) -- Increase vertical split width
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', opts)  -- Decrease vertical split width

-- Quickfix list navigation
vim.keymap.set('n', '<leader>cn', ':cnext<CR>', opts) -- Go to next item in quickfix list
vim.keymap.set('n', '<leader>cp', ':cprev<CR>', opts) -- Go to previous item in quickfix list

-- Text navigation
vim.keymap.set('n', '<leader>j', '5j', opts) -- Jump down 5 lines
vim.keymap.set('n', '<leader>k', '5k', opts) -- Jump up 5 lines
vim.keymap.set('n', '<leader>h', '^', opts)  -- Jump to beginning of the line
vim.keymap.set('n', '<leader>l', '$', opts)  -- Jump to end of the line

-- Tabs
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', opts)   -- Open new tab
vim.keymap.set('n', '<leader>to', ':tabnext<CR>', opts)  -- Go to next tab
vim.keymap.set('n', '<leader>tp', ':tabprev<CR>', opts)  -- Go to previous tab
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', opts) -- Close current tab

-- Terminal management
vim.keymap.set('n', '<leader>tt', ':split | terminal<CR>', opts)  -- Open terminal in horizontal split
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>', opts) -- Open terminal in vertical split

-- Visual mode mappings
vim.keymap.set('v', '<', '<gv', opts)  -- Indent left and stay in visual mode
vim.keymap.set('v', '>', '>gv', opts)  -- Indent right and stay in visual mode
vim.keymap.set('v', 'p', '"_dP', opts) -- Paste without overwriting clipboard

-- Insert mode mappings
vim.keymap.set('i', 'jk', '<Esc>', opts)          -- Exit insert mode quickly
vim.keymap.set('i', '<C-h>', '<C-w>', opts)       -- Delete previous word
vim.keymap.set('i', '<C-u>', '<C-G>u<C-u>', opts) -- Undo line and set undo break point

-- Plugin-specific keymaps (should go in individual plugin config files)

-- Example for Telescope (in plugin config)
-- vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts) -- Find files
-- vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)  -- Live grep
