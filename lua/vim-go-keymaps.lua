local set = vim.api.nvim_set_keymap
local opts = { noremap = true }

set('n', ',r', ':GoRun .', opts)
set('n', ',t', ':GoTest %<Enter>', opts)
