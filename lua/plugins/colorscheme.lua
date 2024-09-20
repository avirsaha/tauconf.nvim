return {
  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    options = {
      install = { colorscheme = { "noirbuddy" } }
    },
    lazy = false,
    priority = 1000,
    config = function()
      require('noirbuddy').setup {
        colors = {
          primary = '#895380',
          secondary = '#ad9aaa',
          background = '#000000',
          noir_0 = '#098e78',
          noir_1 = '#f5f5f5',
          noir_2 = '#d5d5d5',
          noir_3 = '#b4b4b4',
          noir_4 = '#a7a7a7',
          noir_5 = '#949494',
          noir_6 = '#737373',
          noir_7 = '#535353',
          noir_8 = '#323232',
          noir_9 = '#1e1d1e',
        },
      }
    end,
  }
}
