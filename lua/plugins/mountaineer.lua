return {
  'TheNiteCoder/mountaineer.vim',
  name = 'mountaineer', 
  priority = 1000,
  config = function()
    vim.cmd 'set background=dark'
    vim.cmd 'colorscheme mountaineer'

  end,
}
