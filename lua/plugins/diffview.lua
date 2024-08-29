return {
  'sindrets/diffview.nvim', -- Plugin repository
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Required dependency

  config = function()
    local diffview = require 'diffview'

    -- Configure diffview
    diffview.setup {
      keymaps = {
        disable_defaults = false, -- Enable default keymaps
        view = {
          ['<leader>do'] = { 'DiffviewOpen' }, -- Open diffview
          ['<leader>dc'] = { 'DiffviewClose' }, -- Close diffview
          ['<leader>dp'] = { 'DiffviewFocusFiles' }, -- Focus files
          ['<leader>do'] = { 'DiffviewToggleFiles' }, -- Toggle files
        },
        file_panel = {
          ['<leader>dp'] = { 'DiffviewFocusFiles' }, -- Focus files
        },
        file_history_panel = {
          ['<leader>dh'] = { 'DiffviewFileHistory' }, -- Show file history
        },
      },

      -- Other configuration options
      enhanced_diff_hl = true, -- Highlight diffs more clearly
      use_icons = true, -- Use icons in file panel
    }
  end,
}
