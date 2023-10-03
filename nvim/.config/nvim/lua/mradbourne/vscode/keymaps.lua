-- Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Telescope keymaps
vim.keymap.set('n', '<leader>f', function()
    vim.fn.VSCodeNotify('workbench.action.quickOpen')
end)
