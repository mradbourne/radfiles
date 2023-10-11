local tel = require('telescope.builtin')

-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Window keymaps
vim.keymap.set('n', '<leader>w', ':bw<CR>')
vim.keymap.set('n', '<C-m>l', ':Vex<CR><C-w>l')

-- Telescope keymaps
vim.keymap.set('n', '<Tab>', tel.oldfiles)
vim.keymap.set('n', '<leader>f', tel.git_files)
vim.keymap.set('n', '<leader>g', tel.live_grep)
vim.keymap.set('n', '<leader>b', tel.buffers)
