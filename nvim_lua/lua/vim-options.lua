vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " " --mapleader

vim.opt.mouse = "" --desactivation souris
vim.opt.termguicolors = true
vim.opt.ignorecase = true

-- desactivation du highlight apres ESC
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', {noremap = true, silent = true})

--#regionopen splits on Rightpanel
vim.cmd("set splitright")

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set({ "n", "i", "v", "c" }, "<F1>", "<Esc>")

-- deplacements mode normal
vim.keymap.set("n", "<C-K>", "<C-W>k")
-- vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
-- vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- desactivation des fleches
vim.keymap.set({ "n", "i", "v" }, "<Up>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Left>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Down>", "", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", "", { noremap = true, silent = true })

-- split horizontal
vim.keymap.set("n", "<C-w>h", "<C-W>s")

-- copy to clipboard
vim.keymap.set("v", "<leader>y", '"+y')
