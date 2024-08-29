return {
  -- installation
  'nvim-telescope/telescope.nvim',
  -- tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require 'telescope'

    -- Configure telescope
    telescope.setup {
      defaults = {
        prompt_prefix = '> ',
        selection_caret = '> ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = { width = 0.75, height = 0.75, preview_cutoff = 120 },
          vertical = { width = 0.75, height = 0.75, preview_cutoff = 40 },
        },
        file_sorter = require('telescope.sorters').get_fuzzy_file,
        generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
        path_display = { 'truncate' },
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '┐', '┘', '└', '┌' },
        color_devicons = true,
        use_less = true,
        set_env = { ['colorterm'] = 'truecolor' }, -- default = nil,
      },
    }

    -- Load telescope extensions if any
    -- telescope.load_extension('fzy_native')  -- example extension

    local map = require('utils').keymap -- setting up alias

    -- Setting up telescope-specific keymaps
    map.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'fuzzy find files in cwd' })
    map.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'fuzzy find recent files' })
    map.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'find string in cwd' })
    map.set('n', '<leader>fs', '<cmd>Telescope git_status<cr>', { desc = 'find string under cursor in cwd' })
    map.set('n', '<leader>fc', '<cmd>Telescope git_commits<cr>', { desc = 'find todos' })
  end,
}
