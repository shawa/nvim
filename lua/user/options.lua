local indent = 2

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.softtabstop = indent
vim.opt.tabstop = indent
vim.opt.clipboard = "unnamedplus"

vim.cmd("colorscheme monokai-pro")
vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
