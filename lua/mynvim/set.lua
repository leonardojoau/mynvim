-- General Settings
vim.opt.fileformat = "unix"          -- Use Unix-style line endings
vim.opt.mouse = 'a'                  -- Enable mouse support in all modes
vim.opt.guicursor = ""               -- Use default GUI cursor

-- Line Numbers
vim.opt.nu = true                    -- Enable absolute line numbers
vim.opt.relativenumber = true        -- Enable relative line numbers

-- Tabs and Indentation
vim.opt.tabstop = 4                  -- Number of spaces per tab
vim.opt.softtabstop = 4              -- Spaces per tab in insert mode
vim.opt.shiftwidth = 4               -- Spaces per indentation level
vim.opt.expandtab = true             -- Convert tabs to spaces
vim.opt.smartindent = true           -- Automatically indent new lines

-- Text Wrapping
vim.opt.wrap = false                 -- Disable line wrapping

-- File Management
vim.opt.swapfile = false             -- Disable swap file creation
vim.opt.backup = false               -- Disable backup file creation
vim.opt.undofile = true              -- Enable persistent undo

-- Search Settings
vim.opt.hlsearch = true              -- Highlight search results
vim.opt.incsearch = true             -- Enable incremental search

-- Appearance
vim.opt.termguicolors = true         -- Enable true color support
vim.opt.colorcolumn = "80"           -- Highlight column 80 for line length

-- Scrolling and Buffer Behavior
vim.opt.scrolloff = 8                -- Keep 8 lines visible when scrolling
vim.opt.signcolumn = "yes"           -- Always show the sign column
vim.opt.isfname:append("@-@")        -- Append '@-@' to 'isfname' option

-- Performance
vim.opt.updatetime = 50              -- Faster completion (default is 4000ms)
