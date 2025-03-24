return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_x = {
					require("ecolog").get_lualine,
				},
			},
		})
	end,
}
