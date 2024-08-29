return {
  'tpope/vim-fugitive', -- Plugin repository for vim-fugitive
  config = function()
    -- Configure vim-fugitive
    -- Vim-fugitive does not require explicit configuration to use its features.
    -- However, you can set up custom key mappings for Git commands if needed.
    local map = require('utils').keymap
    map('n', '<leader>gs', ':G<CR>', { noremap = true, silent = true, desc = 'Git status' })
    map('n', '<leader>gc', ':Gcommit<CR>', { noremap = true, silent = true, desc = 'Git commit' })
    map('n', '<leader>gp', ':Gpush<CR>', { noremap = true, silent = true, desc = 'Git push' })
    map('n', '<leader>gl', ':Glog<CR>', { noremap = true, silent = true, desc = 'Git log' })
    map('n', '<leader>gd', ':Gdiff<CR>', { noremap = true, silent = true, desc = 'Git diff' })
  end,
}
