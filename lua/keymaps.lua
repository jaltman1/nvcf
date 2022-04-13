local set = vim.api.nvim_set_keymap
set('n', ',p', ':FZF<Enter>', {noremap = true})
set('i', 'jj', '<Esc>', {noremap = true})
