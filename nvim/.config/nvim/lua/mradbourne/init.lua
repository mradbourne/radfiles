-- Plugin manager
require('mradbourne.packer')

-- Core
require('mradbourne.core.colorscheme')
require('mradbourne.core.keymaps')
require('mradbourne.core.options')

-- Plugins
require('mradbourne.plugins.neo-tree')
require('mradbourne.plugins.bufferline')
require('mradbourne.plugins.comment')
require('mradbourne.plugins.gitsigns')
require('mradbourne.plugins.mason')
require('mradbourne.plugins.telescope')

-- Utils
require('mradbourne.utils.highlight-on-yank')
