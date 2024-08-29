return {
  'hrsh7th/nvim-cmp', -- Plugin repository for nvim-cmp
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- LSP source for completion
    'hrsh7th/cmp-buffer', -- Buffer source for completion
    'hrsh7th/cmp-path', -- Path source for completion
    'hrsh7th/cmp-cmdline', -- Command line source for completion
    'saadparwaiz1/cmp_luasnip', -- Snippet source for completion
    'L3MON4D3/LuaSnip', -- Snippet engine
  },

  config = function()
    local cmp = require 'cmp'

    cmp.setup {
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- Expand snippets
        end,
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(), -- Previous item
        ['<C-n>'] = cmp.mapping.select_next_item(), -- Next item
        ['<C-d>'] = cmp.mapping.scroll_docs(-4), -- Scroll documentation up
        ['<C-f>'] = cmp.mapping.scroll_docs(4), -- Scroll documentation down
        ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion
        ['<C-e>'] = cmp.mapping.close(), -- Close completion
        ['<CR>'] = cmp.mapping.confirm { select = true }, -- Confirm selection
      },
      sources = {
        { name = 'nvim_lsp' }, -- LSP source
        { name = 'buffer' }, -- Buffer source
        { name = 'path' }, -- Path source
        { name = 'cmdline' }, -- Command line source
        { name = 'luasnip' }, -- Snippet source
      },
      formatting = {
        format = function(entry, vim_item)
          vim_item.kind = require('lspkind').presets.default[vim_item.kind] or vim_item.kind
          vim_item.menu = ({
            nvim_lsp = '[LSP]',
            buffer = '[Buffer]',
            path = '[Path]',
            cmdline = '[Cmdline]',
            luasnip = '[Snippet]',
          })[entry.source.name]
          return vim_item
        end,
      },
    }
  end,
}
