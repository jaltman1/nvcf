local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'junegunn/fzf.vim'
Plug('junegunn/fzf', {
	['do'] = function()
		vim.call('fzf#install()')
	end
})

-- Not sure what this does yet
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})

-- Adds this theme
Plug('folke/tokyonight.nvim', { branch = 'main' })

--Language server support
Plug('neovim/nvim-lspconfig')

-- Many go features supported including some overlap with gopls lspconfig, should at least share a gopls instance
Plug('fatih/vim-go', {['do'] = 'GoUpdateBinaries'})

-- Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

vim.call('plug#end')

-- Basic keymaps i use
require('keymaps')

-- Settings i would set in any vim i use anywhere
require('basic')

-- Set up for all lsp and lsp related stuff like snippets and autocompletion
require('lsp')

-- Dont know what this stuff does but i think it is helping?
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
  indent = {
      enable = true
  }
}

--Style configuration
vim.g.tokyonight_style = "night"
vim.cmd[[colorscheme tokyonight]]

