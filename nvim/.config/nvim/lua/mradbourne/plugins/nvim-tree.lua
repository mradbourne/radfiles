return {
  'nvim-tree/nvim-tree.lua',
  version = '1.3.3',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '\\', ':NvimTreeToggle<CR>', { desc = 'nivm-tree toggle' } },
  },
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {
      width = 50,
    },
    renderer = {
      group_empty = true,
      icons = {
        git_placement = 'after',
      },
    },
  },
}
