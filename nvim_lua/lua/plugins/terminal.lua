return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			-- size can be a number or function which is passed the current terminal
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
      direction = 'float',
			autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
			-- This field is only relevant if direction is set to 'float'
			float_opts = {
				-- The border key is *almost* the same as 'nvim_open_win'
				-- see :h nvim_open_win for details on borders however
				-- the 'curved' border is a custom border type
				-- not natively supported but implemented in this plugin.
				border = "single",
				-- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
			},
		})

		vim.keymap.set("n", "<C-P>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
      vim.cmd(
        'autocmd! TermEnter term://*toggleterm#* tnoremap <silent><c-p> <Cmd>exe v:count1 . "ToggleTerm"<CR>'
      )
	end,
}
