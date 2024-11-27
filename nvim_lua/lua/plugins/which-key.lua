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
                { "<leader>ff", desc = "Find File",        mode = "n" },
                { "<leader>fo", desc = "Open Recent File", mode = "n" },
                { "<leader>fn", desc = "New File" },
                { "<leader>fg", desc = "Live Grep",        mode = "n" },
                { "<leader>fb", desc = "Open buffer",      mode = "n" },
                { "<leader>fh", desc = "Help tags",        mode = "n" },
                -- LSP
                { "<leader>l",  group = "LSP" },
                { "<leader>la", desc = "Action" },
                { "<leader>lr", desc = "Go to references" },
                { "<leader>lf", desc = "LSP format" },
                { "<leader>ld", desc = "Go to definition" },
                { "<leader>ln", desc = "Go to next error" },
                { "<leader>lp", desc = "Go to previous error" },
                -- Harpoon
                { "<leader>h",  group = "Harpoon" },
                -- Git
                { "<leader>g",  group = "Git" },
                -- Rest
                { "<leader>r",  group = "Rest" },
                { "<leader>rr", desc = "Run HTTP Request" },
                { "<leader>rx", desc = "Stop HTTP Request" },
                { "<leader>rv", desc = "Toggle verbose" },
                { "<leader>rd", desc = "Dry Run" },
                { "<leader>rf", desc = "Http Client File" },
                { "<leader>re", desc = "Http Client Env" },
                -- Json
                { "<leader>j",  group = "Json" },
                { "<leader>jf", desc = "Format JSON" },
                { "<leader>jm", desc = "Minify JSON" },
            })
        end,
    },
}
