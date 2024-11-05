return {
    { "echasnovski/mini.nvim", version = false },
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
        config = function()
            local wk = require("which-key")
            wk.add({
                -- Files
                { "<leader>f",  group = "file" }, -- group
                { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File",        mode = "n" },
                { "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "Open Recent File", mode = "n" },
                { "<leader>fn", desc = "New File" },
                { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep",        mode = "n" },
                { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Open buffer",      mode = "n" },
                { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags",        mode = "n" },
                -- LSP
                { "<leader>L",  group = "LSP" },
                { "<leader>Lf", desc = "LSP format" },
                -- Harpoon
                { "<leader>h",  group = "Harpoon" },
                -- Git
                { "<leader>g",  group = "Git" },
                -- Code
                { "<leader>c",  group = "Code" },
                { "<leader>ca", desc = "Action" },
            })
        end,
    },
}
