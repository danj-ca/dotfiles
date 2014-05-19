" Hello World
" Dan Adams-Jacobson's .vimrc
" dan@danj.ca
" vim:foldmethod=marker:foldlevel=0

set nocompatible " No need to be like Vi; I wouldn't know what I was missing!

" Vundle {{{
filetype off     " Temporary. Required by Vundle

" Set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Get to Vundlin
Plugin 'gmarik/Vundle.vim'

" Load other plugins here... we'll start with Solarized, naturally
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on " This causes Vim to load the plugin file and indent file for filetypes
" We Vundled like it's going out of style
" }}}

" Colors {{{
syntax enable
set background=dark " Change to dark in order to... well, do the obvious
colorscheme solarized
" }}}

" Space, the Final Frontier {{{
set tabstop=4     " This is how many visual spaces Vim will use to show a TAB char
set softtabstop=4 " This is how many spaces actually get added/removed when you type/delete a TAB char
set expandtab     " Converts TABs to spaces
set shiftwidth=4  " Number of spaces indented by each step of autoindent
set nowrap        " Turn off visual word wrapping
set list          " Show invisible characters
set listchars=eol:¶,tab:▸\ ,trail:·,extends:>,precedes:< " Defines what characters are used to visualize whitespace
" }}}

" Basic UI bits {{{
set number     " Show line numbers
set cursorline " Highlight the current line
set wildmenu   " Turn on visual autocomplete for the command menu
set showmatch  " Highlight matching [{()}]
set ruler      " Display cursor position in statusline/at bottom of buffer. Customizable with rulerformat 
" }}}

" Searching {{{
set ignorecase " Case-insensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight all matches
" }}}

" Leader Key Mappings {{{
let mapleader="," " Lead, Don't Follow (change leader key to the common comma)

" That search highlighting sure is persistent... here's an easy way to dismiss it 
nnoremap <leader>n :nohlsearch<CR>
" }}}
