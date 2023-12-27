local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "tpope/vim-fugitive",
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  require("akash.plugins.telescope"),
  require("akash.plugins.nvim-tree"),
  {
    "bluz71/vim-nightfly-colors",
    -- "folke/tokyonight.nvim",
    -- "catppuccino/nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
      options = {
        mode = "tabs",
        separator_style = "slant",
      },
    },
  },
  require("akash.plugins.treesitter"),
  {
    'numToStr/Comment.nvim',
    config = true,
    lazy = false,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = true,
    lazy = false,
  },
  require("akash.plugins.nvim-ufo"),
  require("akash.plugins.indent-blankline"),
  { "SidOfc/mkdx", ft = { "markdown" }, },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "main",
    config = true,
  },
  require("akash.plugins.nvim-cmp"),
  require("akash.plugins.lsp.mason"),
  require("akash.plugins.lsp.lspconfig"),
  require("akash.plugins.formatter"),
  require("akash.plugins.linter"),
}


require("lazy").setup(plugins, {
  install = {
    colorscheme = { "nightfly" },
  }
})
