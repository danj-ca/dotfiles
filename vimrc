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

" Load other plugins here...
Plugin 'altercation/vim-colors-solarized' " Colour me solarized

Plugin 'rizzatti/dash.vim' " Dash integration

Plugin 'scrooloose/syntastic' " Syntax checkin'

Plugin 'bling/vim-airline' " Make the statusline awesome

Plugin 'kien/ctrlp.vim' " Fuzzy matching

Plugin 'ervandew/supertab' " Perform completions with <Tab>

call vundle#end()
filetype plugin indent on " This causes Vim to load the plugin file and indent file for filetypes
" We Vundled like it's going out of style
" }}}

" Colors {{{
syntax enable
set background=dark " Change to dark in order to... well, do the obvious
colorscheme solarized
" }}}

" Typography {{{
" Use patched Powerline version of Source Code Pro font from https://github.com/Lokaltog/powerline-fonts
set guifont=Source\ Code\ Pro\ for\ Powerline:h15
" }}}
"
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

" Statusline {{{
set laststatus=2                           " Always show the statusline
let g:airline_powerline_fonts=1            " Use glyphs from patched powerline font
let g:airline#extensions#tabline#enabled=1 " Display buffers in the tabline
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
