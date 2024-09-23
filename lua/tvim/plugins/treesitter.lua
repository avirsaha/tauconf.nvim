return {
  'https://github.com/nvim-treesitter/nvim-treesitter.git',
  config = function ()
    require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
    }
  }
end,
}
