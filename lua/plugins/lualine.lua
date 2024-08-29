return {
  'nvim-lualine/lualine.nvim', -- Plugin repository
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional: For file icons in the status line

  config = function()
    -- Load lualine with your custom configuration
    require('lualine').setup {
      options = {
        theme = 'catppuccin', -- Choose a theme (replace with your preferred theme)
        section_separators = '|', -- No separators between sections
        component_separators = '|', -- No separators between components
        icons_enabled = true, -- Enable icons if you have nvim-web-devicons installed
      },

      sections = {
        lualine_a = { 'mode' }, -- Mode section (e.g., NORMAL, INSERT)
        lualine_b = { 'branch' }, -- Branch name from Git
        lualine_c = { 'filename' }, -- File name
        lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Encoding, file format, file type
        lualine_y = { 'progress' }, -- Progress percentage
        lualine_z = { 'location' }, -- Line and column location
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' }, -- Show filename in inactive windows
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },

      tabline = {}, -- Optional: Configure tabline (if you use one)
      extensions = { 'nvim-tree' }, -- Optional: Extensions for specific plugins
    }
  end,
}
