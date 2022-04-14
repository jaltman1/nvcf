local set = vim.api.nvim_set_keymap
local opts = { noremap = true }
set('n', ',p', ':FZF<Enter>', opts)
set('i', 'jj', '<Esc>', opts)
