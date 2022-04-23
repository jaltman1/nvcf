local set = vim.api.nvim_set_keymap
local opts = { noremap = true }

set('n', ',r', '<Plug>(go-run)', opts)
set('n', ',t', '<Plug>(go-test-func)', opts)
