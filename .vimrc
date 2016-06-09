"
" Author: Johnny Richard
"
" My vimrc config =D
"
syntax enable

"
" Vundle plugins config
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/plugins.vim
call vundle#end()
filetype plugin indent on

"
" cursor and column style
"
set cursorline
set cursorcolumn
set colorcolumn=80

"
" line number with relative number
"
set relativenumber
set number

"set list
"set listchars=trail:.,tab:▸\ ,eol:¬

"
" search style
"
set incsearch
set hlsearch

"
" Explorer liststyle
"
let g:netrw_liststyle=3

"
" ctrlp ignore list
"
let g:ctrlp_custom_ignore =  {
      \ 'dir': '\v[\/](\.git|node_modules|bower_components)$'
      \ }

"
" indentation configuration
"
set expandtab
set smartindent
set tabstop=2
set shiftwidth=2

let g:user_emmet_install_global = 0
autocmd FileType html,css,hbs EmmetInstall

"
" status line configuration
"
set encoding=utf-8
set laststatus=2
let g:bufferline_echo = 0 
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:bufferline_echo = 0

"
" colorschema and themes config
"
set background=dark
set t_Co=256
colorscheme gruvbox
