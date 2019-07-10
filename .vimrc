" Vundle
syntax on
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
filetype plugin indent on

" Bunvles
call vundle#begin()
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'tpope/vim-eunuch'
" Plugin 'w0rp/ale'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'arcticicestudio/nord-vim'
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

" Colorschemes
colorscheme nord
" colorscheme molokai

" Set options
set expandtab "Convert tabs to spaces 
set gcr=a:blinkon0 "Disable cursor blink
set guifont=Menlo\ Regular:h14 "Change default font size
set hidden "Possibility to have more than one unsaved buffers
set hlsearch "Enable search highlighting
set ignorecase "Ignore case for searches
set number "Absolute line number
set relativenumber "Relative line number
set rnu "Same as above
set showmatch "as
set smartcase "Automatically switch search to case-sensitive if query contains uppercase letter
set softtabstop=4 "as
set tabstop=4 "Indent using four spaces
set ttyfast "Speed up scrolling speed

" Letting
let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

" Remapping
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
inoremap  <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Up>     <NOP>
noremap <F9> :echo system('python "'. expand('%'). '"')<cr>
