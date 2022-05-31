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
g.scrolloff = 5

local set = vim.api.nvim_set_keymap
local opts = { noremap = true }
set('n', ',p', ':FZF<Enter>', opts)
set('i', 'jj', '<Esc>', opts)

set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
