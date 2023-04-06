-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- nvim-tree keymaps
vim.keymap.set('n', '-', require("nvim-tree").open_replacing_current_buffer)

-- Telescope keymaps
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>e', require('telescope.builtin').oldfiles)
vim.keymap.set('n', '<leader>f', function()
  require('telescope.builtin').find_files{ hidden=true }
end)
vim.keymap.set('n', '<leader>g', require('telescope.builtin').live_grep)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
