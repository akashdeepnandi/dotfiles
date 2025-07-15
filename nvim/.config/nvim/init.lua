-- [[ Importing Core ]]
require 'core.options'
require 'core.keymaps'
require 'core.helpers'

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
  -- Theme
  require 'plugins.themes',
  -- Base
  require 'plugins.filetree',
  require 'plugins.statusline',
  require 'plugins.git',
  require 'plugins.telescope',
  require 'plugins.which-key',

  -- LSP
  require 'plugins.lsp',
  require 'plugins.completion',
  require 'plugins.formatter',
  require 'plugins.linter',
  require 'plugins.treesitter',

  -- Misc
  require 'plugins.misc',
}, {
  ui = {
    icons = {},
  },
})
