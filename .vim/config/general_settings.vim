"general_settings.vim

set hls!
set nu!
set cin!
set nocompatible
set autoread
set nobackup
set nowb
set noswapfile

"text width & wrap
"set wrap
set nowrap
set textwidth=120
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set wildmenu
set cursorline
set scrolljump=5
set scrolloff=3

"indent
set autoindent
set smartindent

set gdefault
set incsearch
set backspace=indent,eol,start
set mouse=a
set mousehide

" format settings
" t - Auto-wrap text using textwidth
" c - Auto-wrap comments using textwidth, inserting the current comment
" leader automatically.
" r - Automatically insert the current comment leader after hitting <Enter>
" in Insert mode.
" q - Allow formatting of comments with "gq".
" Note that formatting will not change blank lines or lines containing
" only the comment leader. A new paragraph starts after such a line,
" or when the comment leader changes.
" n - When formatting text, recognize numbered lists.
" 2 - When formatting text, use the indent of the second line of a paragraph
" for the rest of the paragraph, instead of the indent of the first line.
" 1 - Don't break a line after a one-letter word. It's broken before it
" instead (if possible).
"set formatoptions=tcrqn21
