return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "phpactor" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.phpactor.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set("n", "<leader>cf", function()
				vim.lsp.buf.format({ async = true })
			end, { desc = "Code format" })
		end,
	},
}
