
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {
	['do'] = function()
		vim.call('fzf#install()')
	end
})

vim.call('plug#end')

require('keymaps')
vim.cmd 'source ~/.config/nvim/backup'

