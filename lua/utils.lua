local M = {}

-- Function to reload a module
function M.reload(module)
  package.loaded[module] = nil
  require(module)
end

-- Function to create an auto command group
function M.create_augroup(name, autocmds)
  local group = vim.api.nvim_create_augroup(name, { clear = true })
  for _, autocmd in ipairs(autocmds) do
    vim.api.nvim_create_autocmd(autocmd.event, {
      group = group,
      pattern = autocmd.pattern,
      command = autocmd.command,
    })
  end
end

-- Function to set key mappings
function M.set_keymap(mode, lhs, rhs, opts)
  vim.key.set(mode, lhs, rhs, opts)
end

-- Function to set options for key mappings
function M.keymap(mode, lhs, rhs, opts)
  opts = opts or { noremap = true, silent = true }
  M.set_keymap(mode, lhs, rhs, opts)
end

return M
