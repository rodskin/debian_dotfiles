return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "vimdoc", "query", "javascript", "html", "php", "go", "bash" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
