return {
    {
   "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup({
        -- Configuration personnalisée ici
        menu = {
          width = vim.api.nvim_win_get_width(0) - 20,
        },
      })
        vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end, { desc = "Ajouter un fichier à Harpoon" })
        vim.keymap.set("n", "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Ouvrir le menu Harpoon" })
        vim.keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end, { desc = "Naviguer vers le fichier 1" })
        vim.keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end, { desc = "Naviguer vers le fichier 2" })
        vim.keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end, { desc = "Naviguer vers le fichier 3" })
        vim.keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end, { desc = "Naviguer vers le fichier 4" })
        vim.keymap.set("n", "<leader>hp", function() require("harpoon.ui").list():next() end, { desc ="Harpoon next buffer"})
        vim.keymap.set("n", "<leader>hn", function() require("harpoon.ui").list():prev() end, { desc ="Harpoon prev buffer"})
    end,
        -- Raccourcis clavier pour Harpoon

  },
}
