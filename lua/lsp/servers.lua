local lspconfig = require("lspconfig")

-- Custom on_attach function for keymaps
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- LSP keymaps
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
end

-- Setting up LSP servers
--[[
local servers = { "pyright", "ts_ls", "clangd" } -- List your LSPs here


for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach, -- Attach custom keymaps
    flags = {
      debounce_text_changes = 150,
    },
  })
end
--]]
-- Pyright for Python
lspconfig.pyright.setup {}

-- Clangd for C/C++
lspconfig.clangd.setup {}

return {}
