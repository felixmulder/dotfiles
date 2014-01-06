set nocompatible

filetype plugin indent on
syntax enable 
set number
set autoindent 
set cindent
set ruler
set ignorecase
set showmatch
set incsearch

" Buffered tab bindings
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" NERDTree 
nnoremap nt :NERDTree<CR>

" Unbind arrow keys in normal and visual
for prefix in ['n', 'v']
        for key in ['<Up>', '<Down>', '<Left>', '<Right>']
                exe prefix . "noremap " . key . " <Nop>"
        endfor
endfor

" Set tab rules
set tabstop=8
set shiftwidth=8
set expandtab

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Braces
inoremap {<CR> {<CR>}<Esc>ko
