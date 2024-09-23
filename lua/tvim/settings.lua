-- Keymap settings
vim.g.mapleader = ' '

-- Shorten the option handling
local set = vim.opt

-- Line numbers
set.number = true         -- Show line numbers
set.relativenumber = true -- Show relative line numbers

-- Tabs and indentation
set.expandtab = true   -- Use spaces instead of tabs
set.shiftwidth = 2     -- Number of spaces to use for each indentation
set.tabstop = 2        -- Number of spaces tabs count for
set.smartindent = true -- Auto-indent new lines

-- Search settings
set.ignorecase = true -- Ignore case when searching
set.smartcase = true  -- Override ignorecase if search includes capitals
set.incsearch = true  -- Show matches as you type
set.hlsearch = true   -- Highlight search results

-- Appearance
set.termguicolors = true -- Enable true color support
set.cursorline = true    -- Highlight the current line
set.wrap = false         -- Disable line wrapping
vim.o.termguicolors = true
vim.o.background = "dark"

-- Splits
set.splitright = true -- Vertical splits to the right
set.splitbelow = true -- Horizontal splits below

-- Scrolling
set.scrolloff = 10 -- Keep 8 lines visible when scrolling

-- Clipboard
-- set.clipboard = 'unnamedplus' -- Use system clipboard

-- Backup and undo
set.backup = false      -- Disable backups
set.writebackup = false -- Disable write backups
set.swapfile = false    -- Disable swap files
set.undofile = true     -- Enable persistent undo

-- Time for CursorHold (in milliseconds)
set.updatetime = 300

-- Color scheme
-- vim.cmd 'colorscheme catppuccin' -- Set the color scheme -- set from catppuccin.lua
