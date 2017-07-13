"general_settings.vim

set hls!
set cin!
set autoread
set nobackup
set nowb
set noswapfile

"text width & wrap
set nowrap
set smarttab
set textwidth=120
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set wildmenu
set wildmode=full
set scrolljump=5
set scrolloff=3

"indent
set autoindent
set smartindent

" Search & replace stuff.
set gdefault
set incsearch

set backspace=indent,eol,start
set mousehide

set vb t_vb=

" Spelling is annoying in code, turn off by default.  Vim config for mutt will turn this back on.
set nospell

"Allow dir local vimrc for project specific settings and mappings
set exrc
set secure
