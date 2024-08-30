-- Determines the correct data path based on the operating system
local is_windows = vim.loop.os_uname().version:match 'Windows'
local stdpath = is_windows and 'nvim-data' or 'data'
local lazypath = vim.fn.stdpath(stdpath) .. '/lazy/lazy.nvim'

--local lazypath = vim.fn.stdpath 'nvim-data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/avirsaha/lazy.nvim.git', --pulling from a custom fork
    --'--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  { import = 'plugins' },
  { import = 'lsp' },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
}
