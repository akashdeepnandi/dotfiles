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
nmap("<leader>tn", "<cmd>tabnew<cr>")
nmap("<leader>tc", "<cmd>tabclose<cr>")
-- Telescope
nmap("<leader>fc", "<cmd>Telescope find_files hidden=true cwd="..HOME.."/dotfiles<cr>")
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
nmap("<leader>hc", "<cmd>noh<cr>")
nmap("<leader>G", "<cmd>Git<cr>")
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

--  Goyo and limelight
-- <Leader>L <Plug>(Limelight)
-- <Leader>L <Plug>(Limelight)
-- <leader>g <cmd>Goyo<cr>
-- autocmd! User GoyoEnter Limelight
-- autocmd! User GoyoLeave Limelight!
