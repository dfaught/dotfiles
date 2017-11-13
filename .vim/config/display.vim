"Display.vim
" Themes, colors, syntax etc.
set ruler
set showcmd
set showmatch
set laststatus=2

"linenumbers
set relativenumber

let g:bufferline_echo = 0

if has('gui_running')
  set guioptions-=T          	" remove the toolbar
  set guioptions-=m
  set guifont=Hack\ 9
endif

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

colorscheme solarized8_dark_flat

highlight SignColumn   ctermbg=8

set cursorline
set cursorcolumn
set colorcolumn=120

"Code Folding
set foldmethod=syntax
set foldlevelstart=99
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

set ttyfast

autocmd VimResized * wincmd =
