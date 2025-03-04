-- This plugin is used to keep the cursor in the center of the screen when scrolling.
return {
    {
  "arnamak/stay-centered.nvim",
  lazy = false,
  config = function()
    require("stay-centered").setup()
        vim.keymap.set({ 'n', 'v' }, '<leader>st', require('stay-centered').toggle, { desc = 'Toggle stay-centered.nvim' })

    end,
    },
}
