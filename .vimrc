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
set nowrap
set ruler
set autoindent sw=2
set smartindent
set backspace=indent,eol,start
let g:neocomplcache_enable_at_startup = 1

syntax on
filetype off

"=== control code display
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<
au BufRead,BufNew * match JpSpace /　/
highlight SpecialKey term=underline ctermfg=DarkYellow guifg=DarkYellow
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue



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

NeoBundle "Align"
NeoBundle "tpope/vim-endwise"
NeoBundle "vim-scripts/ruby-matchit"
NeoBundle "tpope/vim-rails"
NeoBundle "Shougo/neocomplcache.vim"
NeoBundle "Shougo/neocomplcache-rsense.vim"
NeoBundle "Shougo/unite.vim"
NeoBundle "ujihisa/unite-rake"
NeoBundle "ngmy/vim-rubocop"
NeoBundle "scrooloose/nerdtree"
