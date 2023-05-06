return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'neovim/nvim-lspconfig' }

  use { 'folke/lsp-colors.nvim' }

  use { 'junegunn/fzf.vim' }

  use { 'junegunn/vim-easy-align' }

  use { 'connorholyday/vim-snazzy' }

  use { 'nvim-tree/nvim-tree.lua' }

  use { 'nvim-tree/nvim-web-devicons' }

  use { 'bronson/vim-trailing-whitespace' }

  use { 'vim-airline/vim-airline' }

  use { 'vim-airline/vim-airline-themes' }

  use { 'vim-test/vim-test' }
end)
