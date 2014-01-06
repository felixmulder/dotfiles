filetype plugin on
syntax on
set wrapscan
"set spell
set number
set autoindent
set cindent
set ruler
set ignorecase

" Tab bindings
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" NERDTree and productivity
nnoremap nt :NERDTree<CR>

" Unmap arrow keys, TODO!


" Set tab rules
set tabstop=8
set shiftwidth=8
set expandtab
