set mouse+=a
set clipboard=unnamed
set autoindent
set cindent
set ruler
set ignorecase
set showmatch
set incsearch

let mapleader = ","

call plug#begin('~/.vim/plugged')
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'kyazdani42/nvim-tree.lua'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'

" Testing
Plug 'vim-test/vim-test'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'folke/lsp-colors.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Formatting
Plug 'sbdchd/neoformat' ", { 'for': ['javascript', 'javascript.jsx'] }

call plug#end()

" fzf {
    nnoremap <space><space> :Files<CR>
    nnoremap <space>b :Buffers<CR>
    nnoremap <space>l :BLines<CR>
    let g:fzf_action = { 'ctrl-t': 'e', 'ctrl-s': 'split', 'ctrl-v': 'vsplit' }
" }
"
" LSP {
    lua require("lsp_config")
    lua require("nvim_tree")
" }

" Theming {
    syntax enable
    filetype plugin indent on
    set cursorline
    set number
    colorscheme snazzy


    " Airline {
        set laststatus=2
        let g:airline_powerline_fonts=1
        let g:airline_theme='base16_snazzy' "palenight
        let g:airline#extensions#tabline#enabled=1
    " }
" }

" Tab rules {
    set smarttab
    set tabstop=2
    set shiftwidth=2
    set expandtab
" }

" Clear highlightin in normal mode {
    set hlsearch
    nnoremap <esc> :noh<return><esc>
    nnoremap <esc>^[ <esc>^[
" }

" Testing options {
    let g:test#preserve_screen = 1
    let test#neovim#term_position = "vert botright"
    let test#vim#term_position = "vert"
    let test#strategy = "neovim"

    nnoremap <leader>tf :TestFile<CR>
    nnoremap <leader>tn :TestNearest<CR>
    nnoremap <leader>tl :TestLast<CR>
" }

" Better line navigation {
    map j gj
    map k gk
" }

" Buffered tab bindings {
    nnoremap th  :b1<CR>
    nnoremap tj  :bn<CR>
    nnoremap tk  :bp<CR>
    nnoremap tl  :bl<CR>
    nnoremap tn  :enew<CR>
    nnoremap td  :bd<CR>
" }

" Braces {
    inoremap {<CR> {<CR>}<Esc>ko
" }

" Move lines with C-j/k {
    nnoremap <C-j> :m .+1<CR>==
    nnoremap <C-k> :m .-2<CR>==
    inoremap <C-j> <Esc>:m .+1<CR>==gi
    inoremap <C-k> <Esc>:m .-2<CR>==gi
    vnoremap <C-j> :m '>+1<CR>gv=gv
    vnoremap <C-k> :m '<-2<CR>gv=gv
" }

" Remove scroll functionality {
    nmap <ScrollWheelUp> <nop>
    inoremap <ScrollWheelUp> <nop>
    nmap <ScrollWheelDown> <nop>
    inoremap <ScrollWheelDown> <nop>
" }

" Enable prettier on ts/js/tsx files {
    let g:neoformat_try_formatprg = 1
    let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
    let g:neoformat_run_all_formatters = 1

    " If we have a `node_modules` dir in pwd, let's add its bins to PATH:
    if isdirectory($PWD .'/node_modules')
        let $PATH .= ':' . $PWD . '/node_modules/.bin'
    endif

    autocmd BufWritePre *.js Neoformat
    autocmd BufWritePre *.jsx Neoformat
    autocmd BufWritePre *.ts Neoformat
    autocmd BufWritePre *.tsx Neoformat
" }

" Enable rustfmt for rs files {
    autocmd BufWritePre *.rs Neoformat
" }

" Markdown settings {
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_conceal = 0
    let g:tex_conceal = ""
    let g:vim_markdown_math = 1
    let g:vim_markdown_frontmatter = 1
    let g:vim_markdown_toml_frontmatter = 1
    let g:vim_markdown_json_frontmatter = 1

    " Enable markdown syntax in md files
    augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
    augroup END

    "hi Conceal ctermfg=109 guifg=#83a598 ctermbg=NONE guibg=NONE
    highlight Conceal ctermbg=none ctermfg=none guibg=none guifg=none
" }
