if (vim.g.vscode) then
  -- Core
  require('mradbourne.vscode.keymaps')
  require('mradbourne.vscode.options')

  -- Plugins
  require('mradbourne.plugins.comment')

  -- Utils
  require('mradbourne.utils.highlight-on-yank')
else
  -- Plugin manager
  require('mradbourne.packer')

  -- Core
  require('mradbourne.core.colorscheme')
  require('mradbourne.core.keymaps')
  require('mradbourne.core.options')

  -- Plugins
  require('mradbourne.plugins.comment')
  require('mradbourne.plugins.gitsigns')
  require('mradbourne.plugins.mason')
  require('mradbourne.plugins.telescope')

  -- Utils
  require('mradbourne.utils.highlight-on-yank')
end
