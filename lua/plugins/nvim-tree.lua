return {
  'nvim-neo-tree/neo-tree.nvim', -- Plugin repository
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- Optional: For file icons
    'MunifTanjim/nui.nvim', -- Required dependency
  },

  config = function()
    -- Configure neo-tree
    require('neo-tree').setup {
      sources = { 'filesystem', 'git_status' }, -- Enable filesystem and Git status sources
      close_if_last_window = true, -- Close the tree if it was the last window
      popup_border_style = 'rounded', -- Style of the popup borders
      window = {
        position = 'right', -- Open neo-tree on the left side
        width = 25, -- Width of the neo-tree window
      },
      filesystem = {
        filtered_items = {
          hide_gitignored = true, -- Hide files ignored by Git
          hide_by_name = { '.git', 'node_modules' }, -- Custom filters
        },
        follow_current_file = true, -- Follow the current file
      },
      git_status = {
        symbols = {
          added = '✚',
          modified = '●',
          removed = '✖',
        },
      },
      -- Optional key mappings
      mappings = {
        ['<leader>r'] = 'rename', -- Rename a file
        ['<leader>d'] = 'delete', -- Delete a file
      },
    }
    --map = require('utils').keymap
    -- Keymap to toggle Neo-tree visibility
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = 'Toggle Neo-tree' })
  end,
}
