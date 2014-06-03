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

Plugin 'tpope/vim-markdown' " Markdown syntax highlighting

Plugin 'bling/vim-airline' " Make the statusline awesome

Plugin 'kien/ctrlp.vim' " Fuzzy matching

Plugin 'ervandew/supertab' " Perform completions with <Tab>

Plugin 'majutsushi/tagbar' " Class outliner - make vim a little more IDE-like

" WordPress.vim Dependencies

Plugin 'StanAngeloff/php.vim' " Improved PHP syntax highlighting

Plugin 'shawncplus/phpcomplete.vim' " Improved PHP autocompletion

Plugin 'SirVer/ultisnips' " Support for code snippets

Plugin 'honza/vim-snippets' " You like snippets, do you? Have all the snippet IN THE WORLD!

Plugin 'dsawardekar/wordpress.vim' " Awesome features for WordPress dev

call vundle#end()
" We Vundled like it's going out of style
" }}}

" Colors {{{
filetype plugin indent on " Turns on filetype detection, filetype plugins, and filetype indenting all of which add nice extra features to whatever language you're using
syntax enable
set background=dark " Change to dark in order to... well, do the obvious
colorscheme solarized
" }}}

" Typography {{{
" Use patched Powerline version of Source Code Pro font from https://github.com/Lokaltog/powerline-fonts
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
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
set number            " Show line numbers
set cursorline        " Highlight the current line
set wildmenu          " Turn on visual autocomplete for the command menu
set showmatch         " Highlight matching [{()}]
set foldmethod=syntax " By default, allow folding on language constructs
set ruler             " Display cursor position in statusline/at bottom of buffer. Customizable with rulerformat
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
" Crack open TagBar
noremap <silent> <leader>l :TagbarToggle<CR>
" }}}

" Syntax Config {{{
" TODO May wish to break syntax-specific config out into ftplugins, if this gets bloated
let php_baselib = 1       " Highlight base lib methods - not sure what methods this makes a difference on
let php_htmlInStrings = 1 " Highlight HTML in strings... though it doesn't seem to work
let php_sql_query = 1     " Highlight SQL in strings (not as intuitively-named as some other vars)
let php_folding = 1       " Enable syntax-level folding for PHP
" }}}

" Plugin Config {{{
" TagBar
let g:tagbar_ctags_bin='/usr/local/bin/ctags' " Use our painstakingly-downloaded and compiled version of Exuberant Ctags
"let g:tagbar_width=26 " Adjust the tagbar panel's width if necessary
" Ultisnips
" switch triggers to maintain compatibility with SuperTab & YCM
" (taken from the WordPress.vim sample .vimrc)
let g:UltiSnipsExpandTrigger = "<tab>"
" }}}
