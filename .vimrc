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

" Normalnavigation on wrapped lines
map j gj
map k gk

" Set tab rules
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Braces
inoremap {<CR> {<CR>}<Esc>ko

" Bind space in normal mode to search
map <space> /
map <c-space> ?

" Move lines with C-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
