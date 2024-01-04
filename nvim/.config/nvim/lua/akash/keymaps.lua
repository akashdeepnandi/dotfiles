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
  map({ "n", "v" }, shortcut, command, desc)
end

-- Copy and Paste
-- COPY
vmap("<leader>y", '"+y', "System Copy Selection")
nmap("<leader>y", ':%y+<CR>', "System Copy Buffer")

-- PASTE
nvmap("<leader>p", '"+p', "System Copy Selection")

nmap("g[", "<cmd>Gitsigns prev_hunk<cr>", "Git Previous Hunk")
nmap("g]", "<cmd>Gitsigns next_hunk<cr>", "Git Next Hunk")
nmap("gb", "<cmd>Gitsigns blame_line<cr>", "Git Blame")
nmap("gu", "<cmd>Gitsigns reset_hunk<cr>", "Git Reste Hunk")
nmap("gp", "<cmd>Gitsigns preview_hunk<cr>", "Git Preview Hunk")
nmap("gx", "<cmd>Gitsigns diffthis<cr>", "Git Diff")
-- nmap("gs", "<cmd>Git log<cr>", "Git log")

nvmap("<leader>a", "<C-a>", "Increase count")
nvmap("<leader>x", "<C-x>", "Descrease Count")
nvmap("<leader>sa", "g<C-a>", "Increase count All")
nvmap("<leader>sx", "g<C-x>", "Descrease Count All")
nmap("<leader>tn", "<cmd>tabnew<cr>", "Tab New")
nmap("<leader>tc", "<cmd>tabclose<cr>", "Tab Close")
nmap("<leader>to", "<cmd>tabonly<cr>", "Tab Close Others")
nmap("<Leader>ty", "<cmd>tabnext<cr>", "Tab Next")
nmap("<Leader>tr", "<cmd>tabprevious<cr>", "Tab Previous")
nmap("<leader>1", "1gt", "Tab 1")
nmap("<leader>2", "2gt", "Tab 2")
nmap("<leader>3", "3gt", "Tab 3")
nmap("<leader>4", "4gt", "Tab 4")
nmap("<leader>5", "5gt", "Tab 5")
nmap("<leader>6", "6gt", "Tab 6")
nmap("<leader>7", "7gt", "Tab 7")
nmap("<leader>8", "8gt", "Tab 8")
nmap("<leader>9", "9gt", "Tab 9")
nmap("<leader>0", "0gt", "Tab 0")

-- Windows
nmap("<leader>h", "<C-w>h", "Right Buffer")
nmap("<leader>j", "<C-w>j", "Down Buffer")
nmap("<leader>k", "<C-w>k", "Up Buffer")
nmap("<leader>l", "<C-w>l", "Left Buffer")
nmap("<leader>o", "<C-w>o", "Close other Buffers")
nmap("<leader>c", "<C-w>c", "Close Buffer")
nmap("<leader>hc", "<cmd>noh<cr>", "Clear Highlight")
nmap("<leader>g", "<cmd>Git<cr>", "Open Git")
nmap("<C-Up>", ":resize +2<CR>", "Buffer Increase Width")
nmap("<C-Down>", ":resize -2<CR>", "Buffer Descrease Width")
nmap("<C-Left>", ":vertical resize -2<CR>", "Buffer Increase Height")
nmap("<C-Right>", ":vertical resize +2<CR>", "Buffer Descrease Height")
-- nmap("<C-k>", "<cmd>m -2<CR>", "Git Next Hunk")
-- nmap("<C-j>", "<cmd>m +1<cr>", "Git Next Hunk")

map("v", "<", "<gv", "Indent left")
map("v", ">", ">gv", "Indent Right")
