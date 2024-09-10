return {
  'avirsaha/catppuccin.nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    -- Load Catppuccin
    vim.cmd 'colorscheme catppuccin'

    -- Optional: Configure Catppuccin options
    require('catppuccin').setup {
      flavour = 'macchiato', -- or 'latte', 'frappe', 'mocha'
--      integrations = {
 --       nvimtree = true,
  --      lualine = true, -- Ensure Lualine integration
        -- Add other integrations here
  --    },
    }
  end,
}
