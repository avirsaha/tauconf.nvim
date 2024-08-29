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
        position = 'right', -- Open neo-tree on the right side
        width = 30, -- Width of the neo-tree window
        mapping = {
          ['<leader>e'] = 'toggle', -- Toggle the neo-tree window with Ctrl+E
        },
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
  end,
}
