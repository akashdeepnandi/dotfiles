let mapleader = " "

" Pandoc
nnoremap <leader>pf <cmd>PandocFolding syntax<cr>
nnoremap <leader>n <cmd>execute 'e '.system('date +"%Y%m%d%H%M%S.md"')<cr>

nnoremap <leader>tn <cmd>tabnew<cr>
nnoremap <leader>tc <cmd>tabclose<cr>
" Telescope
nnoremap <leader>lz <cmd>CreateZetLink<cr>
nnoremap <leader>fc <cmd>Telescope find_files hidden=true cwd=/home/akash/dotfiles<cr>
nnoremap <leader>fn <cmd>Telescope find_files hidden=true cwd=/home/akash/notes<cr>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Windows
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>hc <cmd>noh<cr>
nnoremap <leader>G <cmd>Git<cr>

" Goyo and limelight
nmap <Leader>L <Plug>(Limelight)
xmap <Leader>L <Plug>(Limelight)
nnoremap <leader>g <cmd>Goyo<cr>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
