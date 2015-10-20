set hlsearch "Highlights the search
set incsearch "Incremental search
set number "line-numbers on
set ruler "Whatever this is
set ignorecase "ignore's case in search
set nocompatible " Makes vi Improve (loosing backwards capability
set autoindent " Pretty self-explanatory
" set history = 50 , saves 50 commands and 50 search patterns
set showcmd " Shows the command typed in the lower right corner
filetype plugin indent on " Filetype detection, enables plugins automatically, automatically compute indent
autocmd FILETYPE text setlocal textwidth=78 " Autobreak lines at length 78
filetype plugin on " Allow for loading of filetype plugins
syntax enable
set relativenumber
nmap <silent><C-n> :silent noh<Cr>

" Plugins using vim-plug
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/keith/swift.vim'
" Add plugins to &runtimepath
call plug#end()

