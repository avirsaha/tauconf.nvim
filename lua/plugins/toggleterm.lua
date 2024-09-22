local opts = { noremap = true, silent = true }
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 10,
      open_mapping = [[<F7>]],
      shading_factor = 2,
      direction = 'float',
      float_opts = {
        border = 'curved',
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }
    -- Toggle terminal
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', opts)

    -- Open terminal in different layouts
    vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', opts)
    vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm size=40 direction=vertical<CR>', opts)
    vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', opts)

    -- Terminal mode keymaps
    vim.keymap.set('t', '<C-\\>', [[<C-\><C-n><cmd>ToggleTerm<CR>]], opts)
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)
  end,
}
