"Display.vim
" Themes, colors, syntax etc.
set ruler
set showcmd
set showmatch
set infercase
set smartcase
set laststatus=2

"linenumbers
set relativenumber
set nu

let g:bufferline_echo = 0

" Encoding - utf8 for powerline
set encoding=utf-8
scriptencoding utf-8

if has('gui_running')
  set guioptions-=T          	" remove the toolbar
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline 9.5
  ""  set guifont=Inconsolata\ For\ Powerline\ 9.5
  set guifont=Hack\ 9
  "set guifont=Source\ Code\ Pro\ for\ Powerline\ 9.5
endif

" if $TERM == "xterm" || $TERM == "xterm-256color-italic" || $TERM == "screen-256color-italic" || $TERM=="tmux-256color-italic" || $COLORTERM == "gnome-terminal"
"   set t_Co=256
" endif

set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Syntax & filetype
syntax on
filetype indent on

"Color & theme
set background=dark
let g:solarized_visibility="high"
let g:solarized_term_italics=1

colorscheme solarized8_dark_high

highlight SignColumn   ctermbg=8

set cursorline
set cursorcolumn
"long lines support"
set colorcolumn=120

"Code Folding - I'm tired of unfolding everything
set foldmethod=syntax
set foldlevelstart=99
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

set ttyfast
set lazyredraw

autocmd VimResized * wincmd =
