-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-fugitive',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}, -- this is equalent to setup({}) function
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      require('nvim-tree').setup {
        sort_by = 'case_sensitive',
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      }
      vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = '[E]xplorer' })
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'catppuccin',
          -- ... the rest of your lualine config
        },
      }
    end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    version = '*',
    opts = {
      options = {
        mode = 'tabs',
        separator_style = 'slant',
      },
    },
  },
  { 'SidOfc/mkdx', ft = { 'markdown' } },
  {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
  },
  {
    'folke/drop.nvim',
    event = 'VimEnter',
    config = true,
    opts = {
      theme = 'xmas', -- can be one of rhe default themes, or a custom theme
      screensaver = 1000 * 60 * 5,
    },
  },
}
