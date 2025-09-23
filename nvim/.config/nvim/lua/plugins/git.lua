-- Git related plugins and keymaps

return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes

    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },

    config = function()
      require('gitsigns').setup {
        on_attach = function(buf)
          local map = function(mode, shortcut, command, desc)
            vim.keymap.set(mode, shortcut, command, { noremap = true, silent = true, desc = desc })
          end

          local nmap = function(shortcut, command, desc)
            map('n', shortcut, command, desc)
          end

          local vmap = function(shortcut, command, desc)
            map('v', shortcut, command, desc)
          end

          local nvmap = function(shortcut, command, desc)
            map({ 'n', 'v' }, shortcut, command, desc)
          end

          nmap('g[', '<cmd>Gitsigns prev_hunk<cr>', 'Git Previous Hunk')
          nmap('g]', '<cmd>Gitsigns next_hunk<cr>', 'Git Next Hunk')
          nmap('gb', '<cmd>Gitsigns blame_line<cr>', 'Git Blame')
          nmap('gu', '<cmd>Gitsigns reset_hunk<cr>', 'Git Reste Hunk')
          nmap('gp', '<cmd>Gitsigns preview_hunk<cr>', 'Git Preview Hunk')
          nmap('gx', '<cmd>Gitsigns diffthis<cr>', 'Git Diff')
        end,
      }
    end,
  },
  'tpope/vim-fugitive',
}
