return {
    {    'echasnovski/mini.nvim', version = false},
    {
        "folke/which-key.nvim",
        --event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        --config = function()
            --local wk = require("which-key")
            --wk.register({
                --["<leader>"] = {
                    --f = {
                        --name = "+file",
                        --f = { "<cmd>Telescope find_files<cr>", "Find File" },
                        --r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                        --n = { "<cmd>enew<cr>", "New File" },
                        --g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
                        --b = { "<cmd>Telescope buffers<cr>", "Open buffer" },
                        --h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
                    --},

                    --l = {
                        --name = "+LSP",
                        --f = { "LSP format" },
                    --},

            --g = {
              --name = "+Git",
            --},

            --c = {
              --name= "+Code",
              --a = { "Action" },
            --}
                --},
            --})
        --end,
    },
}
