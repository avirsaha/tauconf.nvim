return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'folke/neodev.nvim', opts = {} },
  },
  config = function()
    local lspconfig = require 'lspconfig'
    local mason_lspconfig = require 'mason-lspconfig'
    local server_configurations = require 'plugins.servers'

    local on_attach = function(client, bufnr)
      -- Format on save
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd('BufWritePre', {
          group = vim.api.nvim_create_augroup('Format', { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    mason_lspconfig.setup_handlers {
      function(server)
        local setup_fn = server_configurations.servers[server]
        if setup_fn then
          setup_fn(on_attach, capabilities)
        end
      end,
    }
  end,
}
