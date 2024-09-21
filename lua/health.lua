local health = require('health')

health.report_start('Neovim Configuration Health Check')

local plugins = require('lazy').plugins

-- Check if each plugin is loaded
health.check(function()
  for _, plugin in pairs(plugins) do
    if not plugin.loaded then
      health.report_error(plugin.name .. ' is not installed or not loaded.')
    end
  end
end)

health.check(function()
  local dependencies = { 'grep', 'gcc' }
  for _, dep in ipairs(dependencies) do
    if vim.fn.empty(vim.fn.system('which ' .. dep)) then
      health.report_error(dep .. ' is not installed.')
    end
  end
end)

health.check(function()
  if not vim.fn.exists(':LspInstall') then
    health.report_error('LSP support is not set up. Please install the necessary LSP servers.')
  end
end)
