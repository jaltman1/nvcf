
require('plugins')
require('lsp')

local g = vim.o

g.syntax = "enable"
g.autoindent = true
g.expandtab = true
g.tabstop = 4
g.shiftwidth = 4
g.smarttab = true
g.wrap = true
g.linebreak = true
g.encoding = "utf-8"
g.ruler = true
g.cursorline = true
g.number = true
g.relativenumber = true
g.scrolloff = 8

local set = vim.api.nvim_set_keymap
local opts = { noremap = true }
set('i', 'jj', '<Esc>', opts)

vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_style="night"










--
--local Plug = vim.fn['plug#']
--
--vim.call('plug#begin', '~/.config/nvim/plugged')
--
--Plug 'junegunn/fzf.vim'
--Plug('junegunn/fzf', {
--	['do'] = function()
--		vim.call('fzf#install()')
--	end
--})
--
---- Not sure what this does yet
--Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})
--
---- Adds this theme
--Plug('folke/tokyonight.nvim', { branch = 'main' })
--
----Language server support
--Plug('neovim/nvim-lspconfig')
--
---- Many go features supported including some overlap with gopls lspconfig, should at least share a gopls instance
---- Plug('fatih/vim-go', {['do'] = 'GoUpdateBinaries'})
--
---- Autocompletion
--Plug 'hrsh7th/cmp-nvim-lsp'
--Plug 'hrsh7th/cmp-buffer'
--Plug 'hrsh7th/cmp-path'
--Plug 'hrsh7th/cmp-cmdline'
--Plug 'hrsh7th/nvim-cmp'
---- Plug 'hrsh7th/cmp-vsnip'
---- Plug 'hrsh7th/vim-vsnip'
--Plug 'honza/vim-snippets'
--Plug 'SirVer/ultisnips'
--
--vim.call('plug#end')
--
---- Settings i would set in any vim i use anywhere
--require('basic')
--
--
---- Dont know what this stuff does but i think it is helping?
--require('nvim-treesitter.configs').setup {
--  highlight = {
--    enable = true,
--  },
--  indent = {
--      enable = true
--  }
--}
--
----Style configuration
--vim.g.tokyonight_style = "night"
--vim.cmd[[colorscheme tokyonight]]

