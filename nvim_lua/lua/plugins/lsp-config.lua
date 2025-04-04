return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"cmake",
					"dockerls",
					"html",
					"jsonls",
					"lua_ls",
					"marksman",
					"intelephense",
					"gopls",
					"sqls",
					"lemminx",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			--local on_attach = require("plugins.configs.lspconfig").on_attach
			local util = require("lspconfig/util")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})
			lspconfig.lemminx.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilitones = capabilities,
			})
			lspconfig.sqls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
				--on_attach = on_attach,
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dit = util.root_pattern("go.work", "go.mod", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
						},
					},
				},
			})

			-- shortcuts
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>ln", vim.diagnostic.goto_next)
			vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_prev)
		end,
	},
    {
      "simrat39/symbols-outline.nvim",
      config = function()
        require("symbols-outline").setup()
        vim.keymap.set("n", "<leader>ls", ":SymbolsOutline<CR>", { noremap = true, silent = true })
      end,
    },
}
