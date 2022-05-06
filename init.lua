require('plugins')
require('lsp')
require('vim-go-keymaps')

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


require('nvim-treesitter.configs').setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  indent = {
      enable = true
  }
}








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
-- Not sure what this does yet
--
--
---- Dont know what this stuff does but i think it is helping?
--
----Style configuration
--vim.g.tokyonight_style = "night"
--vim.cmd[[colorscheme tokyonight]]

