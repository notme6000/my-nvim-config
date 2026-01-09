vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"

-- keybinds 


vim.api.nvim_set_keymap('n', '<leader>c', ':noh<CR>', { noremap = true, silent = true })


