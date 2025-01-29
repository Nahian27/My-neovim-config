return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	--lazy = true,
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Find files' })
		vim.keymap.set('n', '<leader><leader>', builtin.live_grep, { desc = 'All search' })
		vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Buffers' })
		vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Help tags' })
	end
}
