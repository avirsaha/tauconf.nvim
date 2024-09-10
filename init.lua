-- Add required path for debugging
--package.path = package.path .. ';./lua/?.lua;./lua/?/init.lua'

-- Load utility functions
require 'utils'

-- Set up Neovim settings
require 'settings'

-- Load plugins
require 'lazy-setup'
-- require 'lsp.servers'

-- Set up key mappings
require 'keymaps'

-- Set up LSP configurations
-- require('lsp')

-- Optionally, you can add more configuration files as needed
-- For example, if you have a specific configuration file for different plugins,
-- you can require them here:
-- require('plugins/lualine')
-- require('plugins/telescope')

-- Load additional configurations for various plugins
-- require('plugins.catppuccin')  -- Color scheme setup
-- require('plugins.lualine')     -- Status line setup
-- require('plugins.nvim-tree')   -- File explorer setup
-- require('plugins.treesitter')  -- Syntax highlighting setup
-- require('plugins.telescope')   -- Fuzzy finder setup
-- require('plugins.mason')       -- LSP and DAP server setup
-- require('plugins.lspconfig')   -- LSP configuration
-- require('plugins.cmp')         -- Autocompletion setup
-- require('plugins.fugitive')    -- Git integration setup
-- require('plugins.gitsigns')    -- Git signs setup
-- require('plugins.diffview')    -- Git diff view setup
