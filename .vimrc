set nocompatible

" Run pathogen plugins
execute pathogen#infect()

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
nnoremap nd :NERDTreeClose<CR>

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
set tabstop=4
set shiftwidth=4
set expandtab

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd BufNewFile,BufRead * match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.scala match OverLength /\%121v.\+/

" Braces
inoremap {<CR> {<CR>}<Esc>ko

" Move lines with C-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Disable folding for markdown
autocmd FileType mkd normal zR

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Comments
hi Comment ctermfg=Grey

" Constants, types
hi Constant ctermfg=Cyan
hi String ctermfg=Red cterm=none
hi Character ctermfg=Red cterm=none
hi SpecialChar ctermfg=Red cterm=none

" Conditionals, loops
hi Conditional ctermfg=Black cterm=bold
hi Repeat ctermfg=Black cterm=bold

" Preprocessor
hi Preproc ctermfg=LightGrey

" Functions
hi StorageClass ctermfg=Black
hi Function ctermfg=Red

" sizeof
hi Operator ctermfg=Black cterm=bold

" Selection
hi Visual ctermfg=Cyan

" Nerdtree splits
hi VertSplit ctermfg=Grey
hi StatusLine ctermfg=Grey

" Highlight Class and Function names
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "w+s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "w+s*::" contains=cCustomScope

hi cCustomFunc  ctermfg=Red cterm=none
hi cCustomClass ctermfg=Red cterm=none
