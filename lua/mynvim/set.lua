vim.opt.fileformat = "unix"
vim.opt.mouse = "a"

vim.opt.guicursor = {
	"n-v-c:block",
	"i-ci:ver25",
	"r-cr:hor20",
	"o:hor50",
}

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.clipboard:append("unnamedplus")
