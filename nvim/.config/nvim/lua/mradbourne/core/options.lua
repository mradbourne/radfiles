vim.wo.number = true
vim.wo.signcolumn = 'yes'
vim.wo.wrap = false
vim.wo.colorcolumn = '80,120'
vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.completeopt = 'menuone,noselect'

-- Windowing
vim.o.splitbelow = true
vim.o.splitright = true

-- Whitespace
vim.opt.list = true
vim.opt.listchars = {
  tab = '▸ ',
  extends = '⟩',
  precedes = '⟨',
  lead = '·',
  trail = '·'
}

-- Indent
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
