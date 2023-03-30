require('plugins')
require('mason-config')
require('vuels')
require('code-completion')
require('custom-keys')
require('file-explorer')
require('syntax-hilight')
require('statline')
require('lsp-settings')
require('mini')

vim.o.termguicolors = true
vim.cmd[[colorscheme everforest]]
-- vim.cmd[[colorscheme material]]

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.number = true
