local opts = vim.opt

local options_map = {
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  smartindent = true,
  tw = 150,
  scrolloff = 8,
  number = false,
  cursorline = true,
  incsearch = true,
  hlsearch = true,
  ignorecase = true,
  ruler = true,
  showmatch = true,
  wildignore = {
    "*.pyc",
    "*_build/*",
    "**/coverage/*",
    "**/node_modules/*",
    "**/android/*",
    "**/ios/*",
    "**/.git/*",
  },
  autoread = true,
  lazyredraw = true,
  foldenable = true,
  hidden = true,
  relativenumber = true,
  fileencoding = "utf-8",
  showtabline = 2,
  smartcase = true,
  splitbelow = true,
  splitright = true,
  updatetime = 500,
  sidescrolloff = 8,
  syntax = "on",
  wrap = false,
  background = "dark",
  termguicolors = true,
  nowrap = true,
  swapfile = false,
  backup = false,
  undodir = "~/.nvim/undodir",
  undofile = true,
}

for k, v in pairs(options_map) do
  opts[k] = v
end

vim.wo.colorcolumn = "80"
vim.g.mapleader = ' '

local spellcheck_cmd = vim.api.nvim_create_augroup('spellcheck_cmd', {clear = true})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.md", "*.txt" },
  group = spellcheck_cmd,
  desc = 'Change string highlight',
  callback = function()
    vim.wo.spell = true
    vim.bo.spelllang = "en_us"
  end
})

vim.cmd("colorscheme gruvbox")