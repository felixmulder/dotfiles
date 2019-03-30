" Plug {
  call plug#begin('~/.vim/plugged')
  Plug 'bronson/vim-trailing-whitespace' " :FixWhiteSpace
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Shougo/unite.vim'
  Plug 'Shougo/vimfiler.vim'

  " Syntax & Language
  Plug 'othree/html5.vim'
  Plug 'neovimhaskell/haskell-vim'
  Plug 'derekwyatt/vim-scala'
  Plug 'purescript-contrib/purescript-vim'
  Plug 'LnL7/vim-nix'
  Plug 'hashivim/vim-terraform'

  " Theme
  Plug 'liuchengxu/space-vim-dark'
  call plug#end()
" }

" General {
  syntax enable
  "set cursorline
  set laststatus=2
  set number
  set autoindent
  set ignorecase
  set ruler
  set showmatch
  set incsearch
  set hlsearch
" }

" Clipboard {
  set mouse+=a
  set clipboard+=unnamedplus
" }

" Keybindings {
  inoremap {<CR> {<CR>}<Esc>ko
  nnoremap <space><space> :CtrlP .<CR>
  nnoremap <esc> :noh<return><esc>
  nnoremap <esc>^[ <esc>^[
  map j gj
  map k gk
  " Move lines with C-j/k
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  inoremap <C-j> <Esc>:m .+1<CR>==gi
  inoremap <C-k> <Esc>:m .-2<CR>==gi
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv
" }

" Tab Rules {
  set smarttab
  set tabstop=2
  set shiftwidth=2
  set expandtab
" }

" Buffered tab bindings {
  nnoremap th  :tabfirst<CR>
  nnoremap tj  :tabnext<CR>
  nnoremap tk  :tabprev<CR>
  nnoremap tl  :tablast<CR>
  nnoremap tt  :tabedit<Space>
  nnoremap tn  :tabnew<CR>
  nnoremap tm  :tabm<Space>
  nnoremap td :tabclose<CR>
" }

" Vim Filer {
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_tree_leaf_icon = ' '
  let g:vimfiler_tree_opened_icon = '▾'
  let g:vimfiler_tree_closed_icon = '▸'
  let g:vimfiler_file_icon = '-'
  let g:vimfiler_readonly_file_icon = '✗'
  let g:vimfiler_marked_file_icon = '✓'
  nnoremap <space>f :VimFiler -toggle<CR>
" }

" Haskell Specific options {
  let g:haskell_enable_quantification = 1
" }

" CtrlP ignore {
  let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](_site|result|dist|node_modules|output|target|\.(git|hg|svn))$',
    \ 'file': '\v\.(swp|so|o|out|bbl|blg|aux|log|toc|jar|class|hi)$',
    \ }
" }

" Theme {
  colorscheme space-vim-dark
  "hi Comment cterm=italic
  hi Comment    guifg=#5C6370 ctermfg=59
  hi Normal     ctermbg=NONE guibg=NONE
  hi LineNr     ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE
  hi Search     ctermbg=8 ctermfg=11 guifg=NONE guibg=NONE
  hi IncSearch  ctermbg=8 ctermfg=11 guifg=NONE guibg=NONE
" }
