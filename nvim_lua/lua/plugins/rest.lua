return {
  "BlackLight/nvim-http",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  ft = "http",
  config = function()
    vim.keymap.set("n", "<leader>h", ":Http<CR>")
  end
}
