set showcmd
set title
set laststatus=2
set wrapscan
set nu
set nocompatible
set expandtab
set hidden
set incsearch
set list
set noswapfile
set showmatch
set smartcase
set tabstop=2
set ruler
set backspace=indent,eol,start
syntax on
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

NeoBundle "tpope/vim-endwise"
NeoBundle "vim-scripts/ruby-matchit"
NeoBundle "tpope/vim-rails"
NeoBundle "Shougo/neocomplcache-rsense.vim"
NeoBundle "Shougo/unite.vim"
NeoBundle "ujihisa/unite-rake"
