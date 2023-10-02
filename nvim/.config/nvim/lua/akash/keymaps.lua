local map = function(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local nmap = function(shortcut, command)
  map('n', shortcut, command)
end

local imap = function(shortcut, command)
  map('i', shortcut, command)
end


nmap("g[", "<cmd>Gitsigns prev_hunk<cr>")
nmap("g]", "<cmd>Gitsigns next_hunk<cr>")
nmap("gb", "<cmd>Gitsigns blame_line<cr>")
nmap("gu", "<cmd>Gitsigns reset_hunk<cr>")
nmap("gp", "<cmd>Gitsigns preview_hunk<cr>")
nmap("gx", "<cmd>Gitsigns diffthis<cr>")
nmap("gs", "<cmd>Git log<cr>")

nmap("<leader>a", "<C-a>")
nmap("<leader>x", "<C-x>")

nmap("<leader>tn", "<cmd>tabnew<cr>")
nmap("<leader>tc", "<cmd>tabclose<cr>")
nmap("<leader>to", "<cmd>tabonly<cr>")
nmap("<leader>1", "1gt")
nmap("<leader>2", "2gt")
nmap("<leader>3", "3gt")
nmap("<leader>4", "4gt")
nmap("<leader>5", "5gt")
nmap("<leader>6", "6gt")
nmap("<leader>7", "7gt")
nmap("<leader>8", "8gt")
nmap("<leader>9", "9gt")
nmap("<leader>0", "0gt")
nmap("<Tab>", "<cmd>tabnext<cr>")
nmap("<S-tab>", "<cmd>tabprevious<cr>")

-- Windows
nmap("<leader>h", "<C-w>h")
nmap("<leader>j", "<C-w>j")
nmap("<leader>k", "<C-w>k")
nmap("<leader>l", "<C-w>l")
nmap("<leader>o", "<C-w>o")
nmap("<leader>c", "<C-w>c")
nmap("<leader>hc", "<cmd>noh<cr>")
nmap("<leader>g", "<cmd>Git<cr>")
nmap("<C-Up>", ":resize +2<CR>")
nmap("<C-Down>", ":resize -2<CR>")
nmap("<C-Left>", ":vertical resize -2<CR>")
nmap("<C-Right>", ":vertical resize +2<CR>")
nmap("<C-k>", "<cmd>m -2<CR>")
nmap("<C-j>", "<cmd>m +1<cr>")

map("v", "<", "<gv")
map("v", ">", ">gv")

nmap("<leader>hc", "<cmd>noh<cr>")
