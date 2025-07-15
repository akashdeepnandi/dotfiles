local opts = vim.opt

local options_map = {
  softtabstop = 2,
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  tw = 150,
  scrolloff = 10,
  cursorline = true,
  incsearch = true,
  hlsearch = true,
  ignorecase = true,
  smartcase = true,
  ruler = true,
  showmatch = true,
  wildignore = {
    '*.pyc',
    '*_build/*',
    '**/coverage/*',
    '**/node_modules/*',
    '**/android/*',
    '**/ios/*',
    '**/.git/*',
  },
  autoread = true,
  -- lazyredraw = true,
  foldenable = true,
  hidden = true,
  number = true,
  relativenumber = true,
  fileencoding = 'utf-8',
  showtabline = 2,
  splitbelow = true,
  splitright = true,
  updatetime = 250,
  sidescrolloff = 8,
  syntax = 'on',
  background = 'dark',
  termguicolors = true,
  wrap = false,
  swapfile = false,
  backup = false,
  undofile = true,
  wildmenu = true,
  mouse = 'a',
  showmode = false,
  -- clipboard = 'unnamedplus',
  breakindent = true,
  signcolumn = 'yes',
  timeoutlen = 300,
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  inccommand = 'split',
  confirm = true,
}

for k, v in pairs(options_map) do
  opts[k] = v
end

-- Setting Global Options
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Setting linewidth hint
vim.wo.colorcolumn = '80'

-- Reset markdown recommended styling
vim.g.markdown_recommended_style = 0
