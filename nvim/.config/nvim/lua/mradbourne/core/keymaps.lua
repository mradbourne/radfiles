local telescope = require('telescope.builtin')

-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Window keymaps
vim.keymap.set('n', '<C-m>l', ':Vex<CR><C-w>l')

-- Telescope keymaps
vim.keymap.set('n', '<Tab>', telescope.buffers)
vim.keymap.set('n', '<leader>f', telescope.git_files)
vim.keymap.set('n', '<leader>g', telescope.live_grep)

-- Activity keymaps
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
vim.api.nvim_create_autocmd("FileType", {
    pattern = "NvimTree",
    callback = function(args)
        vim.keymap.set('n', '<Esc>', ':q<CR>', { buffer = args.buf })
    end
})
