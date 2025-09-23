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

-- Copy and Paste
-- COPY
vmap('<leader>y', '"+y', 'System Copy Selection')
nmap('<leader>y', ':%y+<CR>', 'System Copy Buffer')

-- PASTE
nvmap('<leader>p', '"+p', 'System Copy Selection')

-- nmap('g[', '<cmd>Gitsigns prev_hunk<cr>', 'Git Previous Hunk')
-- nmap('g]', '<cmd>Gitsigns next_hunk<cr>', 'Git Next Hunk')
-- nmap('gb', '<cmd>Gitsigns blame_line<cr>', 'Git Blame')
-- nmap('gu', '<cmd>Gitsigns reset_hunk<cr>', 'Git Reste Hunk')
-- nmap('gp', '<cmd>Gitsigns preview_hunk<cr>', 'Git Preview Hunk')
-- nmap('gx', '<cmd>Gitsigns diffthis<cr>', 'Git Diff')
-- -- nmap("gs", "<cmd>Git log<cr>", "Git log")

nmap('<leader>tn', '<cmd>tabnew<cr>', '[T]ab [N]ew')
nmap('<leader>tc', '<cmd>tabclose<cr>', '[T]ab [C]lose')
nmap('<leader>to', '<cmd>tabonly<cr>', '[T]ab Close [O]thers')
nmap('<leader>1', '1gt', '[T]ab [1]')
nmap('<leader>2', '2gt', '[T]ab [2]')
nmap('<leader>3', '3gt', '[T]ab [3]')
nmap('<leader>4', '4gt', '[T]ab [4]')
nmap('<leader>5', '5gt', '[T]ab [5]')
nmap('<leader>6', '6gt', '[T]ab [6]')
nmap('<leader>7', '7gt', '[T]ab [7]')
nmap('<leader>8', '8gt', '[T]ab [8]')

-- Buffer Management
nmap('<leader>h', '<C-w>h', 'Right Buffer')
nmap('<leader>j', '<C-w>j', 'Down Buffer')
nmap('<leader>k', '<C-w>k', 'Up Buffer')
nmap('<leader>l', '<C-w>l', 'Left Buffer')
nmap('<leader>o', '<C-w>o', 'Close other Buffers')
nmap('<leader>c', '<C-w>c', 'Close Buffer')
nmap('<leader>hc', '<cmd>noh<cr>', 'Clear Highlight')

-- Pane Management
nmap('<C-Up>', ':resize +2<CR>', 'Buffer Increase Width')
nmap('<C-Down>', ':resize -2<CR>', 'Buffer Descrease Width')
nmap('<C-Left>', ':vertical resize -2<CR>', 'Buffer Increase Height')
nmap('<C-Right>', ':vertical resize +2<CR>', 'Buffer Descrease Height')

map('v', '<', '<gv', 'Indent left')
map('v', '>', '>gv', 'Indent Right')

-- save file without auto-formatting
nmap('<leader>w', '<cmd>noautocmd w <CR>', 'Save without formatting')

-- delete single character without copying into register
nmap('x', '"_x', 'Delete single char without replacing register')

-- Vertical scroll and center
nmap('<C-d>', '<C-d>zz', 'Scroll Down and Center')
nmap('<C-u>', '<C-u>zz', 'Scroll Up and Center')

-- Find and center
nmap('n', 'nzzzv', 'Find next and center')
nmap('N', 'Nzzzv', 'Find previous and center')

-- Toggle line wrapping
nmap('<leader>lw', '<cmd>set wrap!<CR>', 'Toggle Line Wrap')

-- Keep last yanked when pasting
map('v', 'p', '"_dP', 'Keep Last yanked')

-- Diagnostic keymaps
nmap('[d', vim.diagnostic.goto_prev, 'Go to previous diagnostic message')
nmap(']d', vim.diagnostic.goto_next, 'Go to next diagnostic message')
nmap('<leader>d', vim.diagnostic.open_float, 'Open floating diagnostic message')
nmap('<leader>q', vim.diagnostic.setloclist, 'Open diagnostics list')
nmap('<leader>q', vim.diagnostic.setloclist, 'Open diagnostic [Q]uickfix list')

nmap('<leader>g', '<cmd>Git<cr>', 'Open Git')
