return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "rust_analyzer",  -- Rust language server
                "pyright",        -- Python language server
            },
            handlers = {
                ["rust_analyzer"] = function()
                    require("lspconfig").rust_analyzer.setup({
                        capabilities = capabilities,
                        on_attach = function(client, bufnr)
                            -- Enable inlay hints if the function exists
                            if vim.lsp.inlay_hint then
                                vim.lsp.inlay_hint(bufnr, true)
                            end
                        end,
                        settings = {
                            ["rust-analyzer"] = {
                                cargo = { allFeatures = true },
                                checkOnSave = {
                                    command = "clippy",
                                },
                                inlayHints = {
                                    lifetimeElisionHints = {
                                        enable = true,
                                        useParameterNames = true,
                                    },
                                    expressionAdjustmentHints = {
                                        enable = true,
                                    },
                                    chainingHints = {
                                        enable = true,
                                    },
                                    parameterHints = {
                                        enable = true,
                                    },
                                    reborrowHints = {
                                        enable = "always",
                                    },
                                },
                            },
                        },
                    })
                end,

                ["pyright"] = function()
                    require("lspconfig").pyright.setup({
                        capabilities = capabilities,
                        on_attach = function(client, bufnr)
                            -- Enable inlay hints for Python (if applicable)
                            if vim.lsp.inlay_hint then
                                vim.lsp.inlay_hint(bufnr, true)
                            end
                        end,
                        settings = {
                            python = {
				pythonPath = vim.fn.exepath("python"),
                                analysis = {
                                    typeCheckingMode = "strict",  -- Enable stricter type checking
                                },
                            },
                        },
                    })
                end,
            }
        })

        -- nvim-cmp setup for autocompletion
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
            }, {
                { name = 'buffer' },
            })
        })

        -- Configure diagnostic appearance
        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
	    signs = false,
        })
    end
}

