return {
  'avirsaha/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup {
      disable_filetype = { 'TelescopePrompt', 'vim' },
  fast_wrap = {
    map = '<M-e>', -- The key used to activate fast wrap (e.g., Alt+E)

    chars = { '{', '[', '(', '"', "'" }, -- The characters used for wrapping
      pattern = [=[%.'%['%{%"%s%}]]=], -- Pattern to identify where fast wrapping can occur
      offset = 0, -- Offset for cursor position after wrapping
      end_key = 'l', -- The key used to complete the fast wrap
      keys = 'qwertyuiopzxcvbnmasdfghjkl', -- Keys for quick selection of wrap characters
      check_comma = true, -- Check for commas in the line
      highlight = 'Search', -- Highlight the selected wrap character
    },

  local cmp = require('cmp'),
  cmp.event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())

    }
  end,
}
