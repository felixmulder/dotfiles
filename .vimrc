set nocompatible
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/vimfiler.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'

call vundle#end()
filetype plugin indent on
" End vundle plugins

" Airline commands
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

syntax enable
set number
set autoindent
set cindent
set ruler
set ignorecase
set showmatch
set incsearch

" Smart copying in terminal
set mouse+=a
set clipboard=unnamed

" Smart ctags, i.e. search up
set tags=tags;/

" Explorer like NERDTree
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_marked_file_icon = '✓'
nnoremap <space>f :VimFiler -toggle<CR>

" opening files
nnoremap <space><space> :CtrlP .<CR>
nnoremap <space>b :CtrlPBuffer<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](target|\.(git|hg|svn))$',
  \ 'file': '\v\.(swp|so|o|out|bbl|blg|aux|log|toc|jar|class)$',
  \ }

" fix whitespaec marking at end of file
let g:extra_whitespace_ignored_filetypes = ['unite']

" EasyAlign stuff
" From visual mode, select portion to align, press enter then space
vnoremap <silent> <Enter> :EasyAlign<cr>

" Rebind leader key
let mapleader = ","

" Buffered tab bindings
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Normalnavigation on wrapped lines
map j gj
map k gk

" Set tab rules
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Set scala-docstrings
let g:scala_scaladoc_indent = 1

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd BufNewFile,BufRead *.* match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.scala match OverLength /\%121v.\+/
autocmd BufNewFile,BufRead *.html  match OverLength /\%251v.\+/
autocmd BufNewFile,BufRead *.js  match OverLength /\%251v.\+/

" Braces
inoremap {<CR> {<CR>}<Esc>ko

" Move lines with C-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Enable markdown syntax in md files
au BufRead,BufNewFile *.md set filetype=markdown

" Remove scroll functionality
nmap <ScrollWheelUp> <nop>
inoremap <ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
inoremap <ScrollWheelDown> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Comments
"hi Comment ctermfg=Grey

"" Constants, types
"hi Constant ctermfg=Cyan
"hi String ctermfg=Red cterm=none
"hi Character ctermfg=Red cterm=none
"hi SpecialChar ctermfg=Red cterm=none

"" Conditionals, loops
"hi Conditional ctermfg=Black cterm=bold
"hi Repeat ctermfg=Black cterm=bold

"" Preprocessor
"hi Preproc ctermfg=LightGrey

"" Functions
"hi StorageClass ctermfg=Black
"hi Function ctermfg=Red

"" sizeof
"hi Operator ctermfg=Black cterm=bold

"" Selection
"hi Visual ctermfg=Cyan

"" Nerdtree splits
"hi VertSplit ctermfg=Grey
"hi StatusLine ctermfg=Grey

"" Highlight Class and Function names
"syn match    cCustomParen    "(" contains=cParen,cCppParen
"syn match    cCustomFunc     "w+s*(" contains=cCustomParen
"syn match    cCustomScope    "::"
"syn match    cCustomClass    "w+s*::" contains=cCustomScope

"hi cCustomFunc  ctermfg=Red cterm=none
"hi cCustomClass ctermfg=Red cterm=none
"

"" Stupid OSX
set backspace=indent,eol,start
