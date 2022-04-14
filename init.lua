local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {
	['do'] = function()
		vim.call('fzf#install()')
	end
})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})
Plug('folke/tokyonight.nvim', { branch = 'main' })

vim.call('plug#end')

require('keymaps')
require('basic')
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
      enable = true
  }
}

vim.g.tokyonight_style = "night"
vim.cmd[[colorscheme tokyonight]]

