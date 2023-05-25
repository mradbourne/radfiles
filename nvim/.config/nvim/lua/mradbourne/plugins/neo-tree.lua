-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
        },
    },
})
