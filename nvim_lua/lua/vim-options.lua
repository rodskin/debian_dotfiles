vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.mouse = ""
vim.opt.termguicolors = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')

vim.keymap.set({'n', 'i'}, '<Up>', '', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<Left>', '', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<Down>', '', { noremap = true, silent = true })
vim.keymap.set({'n', 'i'}, '<Right>', '', { noremap = true, silent = true })


vim.keymap.set({'i'}, '<C-K>', '<Up>')
vim.keymap.set({'i'}, '<C-H>', '<Left>')
vim.keymap.set({'i'}, '<C-J>', '<Down>')
vim.keymap.set({'i'}, '<C-L>', '<Right>')
