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
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    },
    config = function()
      local lsp = require('lsp-zero').preset({})

      lsp.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp.default_keymaps({ buffer = bufnr })
        vim.keymap.set('n', '<leader>fm', function()
          vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
        end, { buffer = bufnr })
      end)

      require('mason-lspconfig').setup({
        ensure_installed = { "lua_ls", "elixirls", "svelte", "tsserver", "cssls", },
        handlers = {
          lsp.default_setup,
        },
      })

      lsp.format_on_save({
        format_opts = {
          async = false,
          timeout_ms = 10000,
        },
        servers = {
          ['lua_ls'] = { 'lua' },
          -- if you have a working setup with null-ls
          -- you can specify filetypes it can format.
          -- ['null-ls'] = {'javascript', 'typescript'},
        }
      })


      -- (Optional) Configure lua language server for neovim
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      local snip_status_ok, luasnip = pcall(require, "luasnip")
      if not snip_status_ok then
        return
      end

      lsp.setup()
      local cmp = require('cmp')

      local check_backspace = function()
        local col = vim.fn.col "." - 1
        return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
      end

      cmp.setup({
        ---
        -- Add you own config here...
        ---
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expandable() then
              luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif check_backspace() then
              fallback()
            else
              fallback()
            end
          end, {
            "i",
            "s",
          }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, {
            "i",
            "s",
          }),
        }
      })
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      local builtin = require('telescope.builtin')
      local ff = function()
        builtin.find_files({ hidden = true })
      end
      local fa = function()
        builtin.find_files({ hidden = true, no_ignore = true, no_ignore_parent = true })
      end
      local fg = function()
        builtin.live_grep()
      end
      vim.keymap.set('n', '<leader>ff', ff, {})
      vim.keymap.set('n', '<leader>fg', fg, {})
      vim.keymap.set('n', '<leader>fa', fa, {})
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true


      require("nvim-tree").setup {
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
        update_focused_file = {
          enable = true,
        }
      }
      vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<cr>", {})
    end,
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
      vim.cmd 'colorscheme material'
      vim.g.material_style = "deep ocean"
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local config = {
        -- tabline = {
        --   lualine_a = { "filename", "tabs" },
        --   lualine_b = {},
        --   lualine_c = {},
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = {}
        --
        -- }
      }

      require("lualine").setup(config)
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup {
        --         ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        ensure_installed = { "c", "lua", "elixir", "svelte", "javascript", "typescript", "python", "go", "php" },
        sync_install = false,    -- install languages synchronously (only applied to `ensure_installed`)
        ignore_install = { "" }, -- List of parsers to ignore installing
        autopairs = {
          enable = true,
        },
        highlight = {
          enable = true, -- false will disable the whole extension
          additional_vim_regex_highlighting = true,
        },
        indent = { enable = true, },
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
      }
    end
  },
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
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    config = function()
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
      vim.o.foldcolumn = '1'

      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
      local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      for _, ls in ipairs(language_servers) do
        require('lspconfig')[ls].setup({
          capabilities = capabilities
          -- you can add other fields for setting up lsp server in this table
        })
      end
      require('ufo').setup()
    end
  }
}


require("lazy").setup(plugins)
