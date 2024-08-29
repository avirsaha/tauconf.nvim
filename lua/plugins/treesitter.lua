return {
  'nvim-treesitter/nvim-treesitter',
require("lazy").setup({{ import = "slydragonn.plugins"}, { import = "slydragonn.plugins.lsp"}}, {
  build = ':TSUpdate', -- Automatically update parsers after installation

  config = function()
    -- Configure Treesitter
    require('nvim-treesitter.configs').setup {

      -- List of parsers to install
      ensure_installed = {
        'c',
        'cpp',
        'lua',
        'python',
        'javascript',
        -- Add more languages as needed
        -- "html",
        -- "css",
      },

      -- Automatically install missing parsers when entering a buffer
      auto_install = true,

      -- Syntax highlighting configuration
      highlight = {
        enable = true, -- Enable Treesitter-based syntax highlighting
        additional_vim_regex_highlighting = false, -- Disable Vim's regex-based highlighting to avoid conflicts
      },

      -- Indentation configuration
      indent = {
        enable = true, -- Enable Treesitter-based indentation
      },

      -- Text objects configuration for better code navigation and editing
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Automatically jump forward to text objects
          keymaps = {
            ['aa'] = '@parameter.outer', -- Select outer part of a parameter
            ['ia'] = '@parameter.inner', -- Select inner part of a parameter
            ['af'] = '@function.outer', -- Select outer part of a function
            ['if'] = '@function.inner', -- Select inner part of a function
            ['ac'] = '@class.outer', -- Select outer part of a class
            ['ic'] = '@class.inner', -- Select inner part of a class
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- Set jumps in the jumplist for moving between text objects
          goto_next_start = {
            [']m'] = '@function.outer', -- Go to the start of the next function
            [']c'] = '@class.outer', -- Go to the start of the next class
          },
          goto_next_end = {
            [']M'] = '@function.outer', -- Go to the end of the next function
            [']C'] = '@class.outer', -- Go to the end of the next class
          },
          goto_previous_start = {
            ['[m'] = '@function.outer', -- Go to the start of the previous function
            ['[c'] = '@class.outer', -- Go to the start of the previous class
          },
          goto_previous_end = {
            ['[M'] = '@function.outer', -- Go to the end of the previous function
            ['[C'] = '@class.outer', -- Go to the end of the previous class
          },
        },
      },

      -- Rainbow parentheses configuration
      rainbow = {
        enable = true, -- Enable rainbow parentheses
        extended_mode = true, -- Highlight non-bracket delimiters as well
      },

      -- Playground configuration for Treesitter
      playground = {
        enable = true,
        updatetime = 25, -- Delay before highlighting nodes in the playground
        persist_queries = false, -- Do not persist queries across sessions
      },
    }

    -- Optional: Keymaps for Treesitter commands
    local map = require('utils').keymaps -- Setting up alias
    map('n', '<leader>ti', ':TSInstall<CR>', { noremap = true, silent = true, desc = 'Install Treesitter parser' })
    map('n', '<leader>tu', ':TSUpdate<CR>', { noremap = true, silent = true, desc = 'Update Treesitter parser' })
  end,

  -- Dependencies for Treesitter
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects', -- Additional text objects
    'p00f/nvim-ts-rainbow', -- Rainbow parentheses
  },
}
