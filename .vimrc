set nocompatible
filetype off

" set the tuntime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"plugin on Github repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'jpalardy/vim-slime'
Plugin 'exu/pgsql.vim'
Plugin 'vim-latex/vim-latex'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Make Vim more useful
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

"Make Vim more useful
set nocompatible
"Use the OS clipboard by default (on versions compiled with '+clipboard')
set clipboard=unnamed
"Enhance command-line completion
set wildmenu
"Allow cursor keys in insert mode
set esckeys
"Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don't add empty newlines at the end of files
set binary
set noeol
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Show the cursor position
set ruler
" Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline configuration
set lazyredraw

"vim slime configuration
let g:slime_target = "tmux"
" .pgsql syntex highlighting
set syntax=pgsql

"vim-latex configuration
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_MultipleCompileFormats='pdf'


" spell check
set spell spelllang=en_us

