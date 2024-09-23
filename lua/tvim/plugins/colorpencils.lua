return {
  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    options = {
      install = { colorscheme = { "noirbuddy" } },
    },
    lazy = false,
    priority = 1000,
    config = function()
      require('noirbuddy').setup {

        colors = {
          -- Primary colors:
          primary = '#c41974',    -- Dark purple for primary elements and interactive states.
          secondary = '#82b1ff',  -- Sky blue for secondary accents and highlights.
          background = '#000000', -- Dark indigo background, softer than pure black for better contrast.

          -- Accent colors:
          noir_0 = '#26a69a', -- Muted teal for highlighted or important elements.
          noir_1 = '#c792ea', -- Soft purple for hover effects, selections, and emphasis.

          -- Lighter Grayscale:
          noir_2 = '#f2f2f2',        -- Very light gray, almost white, for the highest contrast text or elements.
          noir_3 = '#e0e0e0',        -- Light gray for prominent text and highly visible elements.
          noir_4 = '#c2c2c2',        -- Light-medium gray for secondary text or less prominent elements.
          noir_5 = '#a3a3a3',        -- Medium gray for borders, dividers, and inactive buttons.
          noir_6 = '#8b8b8b',        -- Dark-medium gray for shadows, background accents, or inactive elements.
          noir_7 = '#6f6f6f',        -- Dark gray for deeper shadows, background highlights, or low-key accents.
          noir_8 = '#525252',        -- Charcoal gray for UI borders or secondary background areas.
          noir_9 = '#393939',        -- Very dark gray to outline element
          comment_color = '#161616', -- A lighter gray for comments to ensure they stand out without being too harsh.
        }
      }
    end,
  }
}
