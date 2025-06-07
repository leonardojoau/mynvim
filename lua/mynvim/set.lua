vim.opt.fileformat = "unix"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.guicursor = {
    "n-v-c:block",
    "i-ci:ver25",
    "r-cr:hor20",
    "o:hor50",
}
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.incsearch = true

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 25
vim.opt.clipboard:append("unnamedplus")
