return {
    "heilgar/nvim-http-client",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("http_client").setup({
            default_env_file = '.env.json',
            request_timeout = 30000, -- 30 seconds
            -- Optional: Configure default options here
        })
        vim.api.nvim_set_keymap('n', "<leader>rr", "<cmd>HttpRun<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<leader>rx", "<cmd>HttpStop<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<leader>rv", "<cmd>HttpVerbose<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<leader>rd", "<cmd>HttpDryRun<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>rf', [[<cmd>Telescope http_client http_env_files<CR>]], { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>re', [[<cmd>Telescope http_client http_envs<CR>]], { noremap = true, silent = true })
    end,
}
