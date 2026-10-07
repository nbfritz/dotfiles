-- Basic configuration
vim.opt.termguicolors = true
vim.opt.number        = false

vim.opt.tabstop       = 2
vim.opt.shiftwidth    = 2
vim.opt.smarttab      = true
vim.opt.expandtab     = true
vim.opt.smartindent   = true

vim.opt.ruler         = true
vim.opt.visualbell    = true
vim.opt.showcmd       = true
vim.opt.list          = true

vim.opt.swapfile      = false
vim.opt.backup        = false
vim.opt.splitbelow    = true
vim.opt.splitright    = true
vim.opt.hlsearch      = false
vim.opt.ignorecase    = true
vim.opt.smartcase     = true


-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Kick off the lazy.nvim plugin manager load process
require("config.lazy")
