return {
    "VPavliashvili/json-nvim",
    config = function()
        vim.keymap.set("n", "<leader>jf", '<cmd>JsonFormatFile<cr>')
        vim.keymap.set("n", "<leader>jm", '<cmd>JsonMinifyFile<cr>')
    end,
}
