return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "lua",
                "vimdoc",
                "json",
                "http",
                "query",
                "javascript",
                "html",
                "php",
                "go",
                "bash",
            },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
        -- Définition des couleurs
        vim.cmd([[
          highlight INFO_HL ctermbg=yellow guibg=yellow
          highlight ERROR_HL ctermbg=red guibg=red
        ]])
        -- Fonction pour activer la surbrillance
        local function highlight_words()
          vim.cmd("match INFO_HL /\\<INFO\\>/")
          vim.cmd("match ERROR_HL /\\<ERROR\\>/")
        end

        -- AutoCmd : Appliquer la coloration pour tous les fichiers sans extension
        vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
          pattern = "*",
          callback = function()
            if vim.fn.expand("%:e") == "" then
              highlight_words()
            end
          end,
        })
    end,
}


