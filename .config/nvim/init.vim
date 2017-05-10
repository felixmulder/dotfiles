set nocompatible
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'                  " Plugin installation
Plugin 'Shougo/deoplete.nvim'               " Completion plugin
Plugin 'Shougo/vimproc.vim'                 " interactive command exec
Plugin 'Shougo/unite.vim'                   " buffer
Plugin 'bronson/vim-trailing-whitespace'    " :FixWhiteSpace
Plugin 'junegunn/vim-easy-align'            " alignment plugin select => enter <num> space
Plugin 'scrooloose/nerdcommenter'           " commenting plugin
Plugin 'Shougo/vimfiler.vim'                " file explorer
Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search
Plugin 'airblade/vim-gitgutter'             " git show diffs
Plugin 'tpope/vim-fugitive'                 " git wrapper

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theming plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'            " better status bar
Plugin 'vim-airline/vim-airline-themes'     " status bar themes
Plugin 'mhartington/oceanic-next'           " oceanic theme
Plugin 'jdkanani/vim-material-theme'        " material theme
Plugin 'ryanoasis/vim-devicons'             " utf8 icons


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language Server Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'autozimu/LanguageClient-neovim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/html5.vim'                   " html5 syntax
Plugin 'digitaltoad/vim-pug'                " pug syntax
Plugin 'rust-lang/rust.vim'                 " rust syntax
Plugin 'derekwyatt/vim-scala'               " scala syntax
Plugin 'leafgarland/typescript-vim'         " typescript syntax
call vundle#end()

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
" Set tab in deoplete to go down through suggestions
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><return> pumvisible() ? "\<c-y>" : "\<return>"

" Enable true colors
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
"colorscheme OceanicNext
set background=dark
colorscheme material-theme

filetype plugin indent on
" End vundle plugins

" Set true colors
set termguicolors

" Highlight current line
set cursorline

" Airline commands
set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme='luna'
"let g:airline_theme='solarized'
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1

" focus mode binding
let g:focus_use_default_mapping = 0
nnoremap <space>c <Plug>FocusModeToggle

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

" clipboard sharing Linux:
"vnoremap <C-c> "+y

" opening files
nnoremap <space><space> :CtrlP .<CR>
nnoremap <space>b :CtrlPBuffer<CR>

" remap ¤ to end of line
nnoremap ¤ <End>

" macOS settings
nnoremap € <End>
set backspace=indent,eol,start
set list
set listchars=nbsp:¬

" Clear highlighting on escape in normal mode
set hlsearch
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](_site|target|target-0.9.5|\.(git|hg|svn))$',
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
" let g:scala_scaladoc_indent = 1

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

"hi Visual term=reverse cterm=reverse guibg=White
