return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme "catppuccin-mocha"
      -- Vérifier si le buffer actuel correspond au fichier pour lequel vous souhaitez coloriser les numéros de ligne
        --if vim.api.nvim_buf_get_option(0, 'buftype') == '' then
            -- Coloriser les numéros de ligne uniquement pour le fichier actif
        vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#fbfdb2' })
        vim.api.nvim_set_hl(0, 'LineNr', { fg='#42f7fc' })
        vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#fbfdb2' })
        --else
            --vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='grey' })
            --vim.api.nvim_set_hl(0, 'LineNr', { fg='grey' })
            --vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='grey' })
        --end
            -- Fonction pour définir la colorisation des numéros de ligne du fichier actif
    end
  }
}

