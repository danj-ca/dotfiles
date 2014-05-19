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
set background = light " Change to dark in order to... well, do the obvious
colorscheme solarized
" }}}
