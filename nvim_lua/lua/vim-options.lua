vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " " --mapleader

vim.opt.mouse = "" --desactivation souris
vim.opt.termguicolors = true
vim.opt.ignorecase = true

--#regionopen splits on Rightpanel
vim.cmd("set splitright")

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set({ "n", "i", "v", "c" }, "<F1>", "<Esc>")

-- deplacements mode normal
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- desactivation des fleches
vim.keymap.set({ "n", "i", "v" }, "<Up>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Left>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Down>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", "", { noremap = true, silent = true })

-- split horizontal
vim.keymap.set("n", "<C-w>h", "<C-W>s")
