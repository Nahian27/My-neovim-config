return {
	{
		"williamboman/mason.nvim",
		config = function()
			require('mason').setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls' }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Documentation' })
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Actions' })
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto definition' })
			vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
			vim.keymap.set('n', '<leader>cf',
				function()
					vim.lsp.buf.format { async = true }
				end,
				{ desc = 'Code format' }
			)
		end
	}
}
