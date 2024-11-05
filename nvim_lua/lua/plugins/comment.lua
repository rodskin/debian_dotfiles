return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
			vim.keymap.set("n", "<leader>cc", "gcc", { noremap = false, silent = true })
			vim.keymap.set("v", "<leader>c", "gc", { noremap = false, silent = true })
		end,
	},
}
