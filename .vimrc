" Maintainer:   Parker Truesdell <parkertruesdell@gmail.com>;
" Last Change:  June 29, 2015
" p> 
"
"execute pathogen#infect()

set nocompatible
set hidden

"Allow user to backspace over anything in insert mode
set backspace=indent,eol,start

set autoindent

"Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"Always show line numbers
set number

"Set autoindent width
set shiftwidth=4

"Show matches while searching
set showmatch

"Insert tabs on the start of the line according to shiftwidth, not tabstop
set smarttab

"Set case sensitive searching
set ignorecase

"Use case if and caps used
set smartcase

"Dictionary word completion
set dictionary=/usr/share/dict/words

"Highlight search items
set hlsearch

"Show search matches as you type set incsearch
set incsearch

set visualbell
set noerrorbells

set nobackup
set noswapfile
set pastetoggle=<F2>
filetype plugin indent on
syntax on

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop> 
map <Leader>n <plug>NERDTreeTabsToggle<CR>

:nmap j gj
:nmap k gk
:nmap <C-n> :NERDTreeToggle<CR>
nnoremap ; :
" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
