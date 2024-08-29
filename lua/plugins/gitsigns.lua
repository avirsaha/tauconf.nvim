return {
  'lewis6991/gitsigns.nvim', -- Plugin repository for gitsigns
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency

  config = function()
    local gitsigns = require 'gitsigns'

    gitsigns.setup {
      signs = {
        add = { text = '│' },
        change = { text = '│' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      signcolumn = true, -- Show the sign column
      numhl = false, -- Highlight the line number
      linehl = false, -- Highlight the line with changes
      word_diff = false, -- Enable word diffing
      watch_index = {
        interval = 1000, -- Check for changes every second
      },
      update_debounce = 100, -- Debounce time for updates (in ms)
      status_formatter = nil, -- Customize the status line format (optional)
    }

    local map = require('utils').keymap

    map('n', '<leader>gs', '<cmd>Gitsigns stage_hunk<CR>', { noremap = true, silent = true, desc = 'Stage hunk' })
    map('n', '<leader>gu', '<cmd>Gitsigns undo_stage_hunk<CR>', { noremap = true, silent = true, desc = 'Undo stage hunk' })
    map('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<CR>', { noremap = true, silent = true, desc = 'Preview hunk' })
    map('n', '<leader>gd', '<cmd>Gitsigns diffthis<CR>', { noremap = true, silent = true, desc = 'Git diff' })
  end,
}
