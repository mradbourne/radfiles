local tel = require('telescope.builtin')

-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Activity keymaps
vim.keymap.set('n', '<leader>ae', vim.cmd.Ex)
vim.keymap.set('n', '-', ':NERDTreeFocus<cr>')

-- Telescope keymaps
vim.keymap.set('n', '<leader>b', tel.buffers)
vim.keymap.set('n', '<leader>e', tel.oldfiles)
vim.keymap.set('n', '<leader>pf', function()
  tel.find_files { hidden = true }
end)
vim.keymap.set('n', '<leader>f', tel.git_files)
vim.keymap.set('n', '<leader>g', tel.live_grep)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
