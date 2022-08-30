HOME = os.getenv("HOME")

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

nmap("<leader>ff", "<cmd>Git blame<cr>")


--" Pandoc
-- nnoremap <leader>pf <cmd>PandocFolding syntax<cr>
-- nnoremap <leader>n <cmd>execute 'e '.system('date +"%Y%m%d%H%M%S.md"')<cr>
--
nmap("<leader>e", "<cmd>NvimTreeToggle<cr>")
nmap("<leader>a", "<C-a>")
nmap("<leader>x", "<C-x>")


--Tabs
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
nmap("gy", "gT")

-- Telescope
nmap("<leader>fc", "<cmd>Telescope find_files hidden=true cwd="..HOME.."/dotfiles<cr>")
nmap("<leader>fs", "<cmd>Telescope find_files hidden=true cwd="..HOME.."/scripts<cr>")
nmap("<leader>fn", "<cmd>Telescope find_files hidden=true cwd="..HOME.."/notes<cr>")
nmap("<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fd", "<cmd>lua vim.lsp.buf.formatting_sync()<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")
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

nmap("<leader>ss", ":<C-u>SessionSave<CR>")
nmap("<leader>sl", ":<C-u>SessionLoad<CR>")

nmap("g[", "<cmd>Gitsigns prev_hunk<cr>")
nmap("g]", "<cmd>Gitsigns next_hunk<cr>")
nmap("gb", "<cmd>Gitsigns blame_line<cr>")
nmap("gu", "<cmd>Gitsigns reset_hunk<cr>")
nmap("gp", "<cmd>Gitsigns preview_hunk<cr>")
nmap("gx", "<cmd>Gitsigns diffthis<cr>")
nmap("gs", "<cmd>Git log<cr>")


nmap("<leader>C", ":Calendar<cr>")
-- nmap("<leader>gn", "<cmd>Gitsigns next_hunk<cr>")
-- nmap("<leader>gn", "<cmd>Gitsigns next_hunk<cr>")
-- blame_line
-- reset_hunk
-- preview_hunk
-- diffthis
--  Goyo and limelight
-- <Leader>L <Plug>(Limelight)
-- <Leader>L <Plug>(Limelight)
-- <leader>g <cmd>Goyo<cr>
-- autocmd! User GoyoEnter Limelight
-- autocmd! User GoyoLeave Limelight!
