return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "morhetz/gruvbox"
  use 'shaunsingh/nord.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim

  use 'nvim-lualine/lualine.nvim'
  use 'ryanoasis/vim-devicons'
  use "kyazdani42/nvim-tree.lua"
  use 'kyazdani42/nvim-web-devicons'
  use 'itchyny/calendar.vim'

  use 'zivyangll/git-blame.vim'
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"
  use 'akinsho/git-conflict.nvim'
  use 'TimUntersberger/neogit'
  use 'voldikss/vim-floaterm'
  use 'tveskag/nvim-blame-line'

  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use 'tpope/vim-surround'

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'

  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim"

  use "JoosepAlviste/nvim-ts-context-commentstring"

  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  use "glepnir/dashboard-nvim" -- a bunch of snippets to use

  -- Only for json
  use {
    'elzr/vim-json',
    ft = { 'json', },
  }
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'
  use 'SidOfc/mkdx'
  -- Only for markdown

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
