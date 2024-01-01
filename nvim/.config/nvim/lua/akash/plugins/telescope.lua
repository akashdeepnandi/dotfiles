return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-tree/nvim-web-devicons",
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
    vim.keymap.set('n', '<leader>ff', ff, { noremap = true, silent = true, desc = "Find Files" })
    vim.keymap.set('n', '<leader>fg', fg, { noremap = true, silent = true, desc = "Live Grep" })
    vim.keymap.set('n', '<leader>fa', fa, { noremap = true, silent = true, desc = "Find All Files" })
    local telescope = require 'telescope'

    telescope.setup {
      defaults = {
        file_ignore_patterns = { "**/node_modules", ".git/", "node_modules" },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden"
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        }
      }
    }
  end
}
