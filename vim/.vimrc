" remapping
inoremap <C-h> <C-W>h
inoremap <C-j> <C-W>j
inoremap <C-k> <C-W>k
inoremap <C-l> <C-W>l
noremap <F9> :echo system('python "'. expand('%'). '"')<cr>

" vundle
syntax on
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
filetype plugin indent on

" vundles
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'joshdick/onedark.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jceb/vim-orgmode'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-latex/vim-latex'
call vundle#end()

" colorschemes
colorscheme onedark

" set options
set backspace=indent,eol,start  "Allow backspace in insert mode
set backupskip=/tmp/*,/private/tmp/*  "Don’t create backups when editing files in certain directories
set clipboard=unnamed  "Use the OS clipboard by default (on versions compiled with `+clipboard`)
set encoding=utf-8 nobomb  "Use UTF-8 without BOM
set esckeys  "Allow cursor keys in insert mode
set exrc  "Enable per-directory .vimrc files and disable unsafe commands in them
set gcr=a:blinkon0  "Disable cursor blink
set gdefault  "Add the g flag to search/replace by default
set guifont=Menlo\ Regular:h14  "Change default font size
set hidden  "Possibility to have more than one unsaved buffers
set hlsearch  "Enable search highlighting
set ignorecase  "Ignore case for searches
set incsearch  "Highlight dynamically as pattern is typed
set laststatus=2  "Always show status line
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_  "Show “invisible” characters
"set list  "Show whitespaces as characters
set mouse=a  "Enable mouse in all modes
set noerrorbells  "Disable error bells
set nostartofline  "Don’t reset cursor to start of line when moving around.
set number relativenumber  "Relative line number"
set nu rnu
set ruler  "Show the cursor position
set secure  "Prevents potentially dangerous command excecution in shell
set shortmess=atI  "Don’t show the intro message when starting Vim
set showcmd  "Show the (partial) command as it’s being typed
set showmode  "Show the current mode
set smartcase  "Automatically switch search to case-sensitive if query contains uppercase letter
set tabstop=4 shiftwidth=4 expandtab|retab  "Expand tabs to spaces
set title  "Show the filename in the window titlebar
set ttyfast  "Optimize for fast terminal connections
set ttyfast  "Speed up scrolling speed
set wildmenu  "Enhance command-line completion
set cursorline "Highlight current line:highlight CursorLine ctermbg=LightBlue


