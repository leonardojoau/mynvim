return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',               -- nvim-cmp for autocompletion
    'hrsh7th/cmp-nvim-lsp',            -- LSP source for nvim-cmp
    'L3MON4D3/LuaSnip',                -- LuaSnip for snippet support (optional)
    'saadparwaiz1/cmp_luasnip',        -- LuaSnip source for nvim-cmp (optional)
    'jose-elias-alvarez/null-ls.nvim', -- Add null-ls.nvim here
  },
  config = function()
    -- Setup Mason and ensure 'pyright', 'rust_analyzer', and 'clangd' are installed
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "rust_analyzer", "clangd" }
    })

    -- Setup nvim-cmp for autocompletion
    local cmp = require('cmp')
    local luasnip = require('luasnip')

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
      })
    })

    -- LSPConfig
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Setup Python LSP (Pyright)
    lspconfig.pyright.setup {
      capabilities = capabilities,
    }

    -- Setup Rust LSP (rust-analyzer)
    lspconfig.rust_analyzer.setup {
      capabilities = capabilities,
    }

    -- Setup C/C++ LSP (clangd)
    lspconfig.clangd.setup {
      capabilities = capabilities,
    }

    -- Setup null-ls for formatting with black
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.black,  -- Add black as a formatter
      },
    })

    -- LSP keybindings setup
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
          vim.lsp.buf.format { async = true }
        end, opts)
      end,
    })
  end
}
