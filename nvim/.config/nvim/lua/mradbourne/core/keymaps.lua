-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '-', ':NvimTreeFocus<CR>')

-- Telescope keymaps
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>e', require('telescope.builtin').oldfiles)
vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>g', require('telescope.builtin').current_buffer_fuzzy_find)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
