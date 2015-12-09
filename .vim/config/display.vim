"Display.vim
" Themes, colors, syntax etc.
set ruler
set showcmd
set showmatch
set ignorecase
set smartcase
set smarttab
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
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
  "Yes, my eyes are aging. I now have to use a 10 pt font
  ""  set guifont=Inconsolata\ For\ Powerline\ 10
  set guifont=Hack\ 9
  "set guifont=Source\ Code\ Pro\ for\ Powerline\ 9.5
endif

if $TERM == "xterm" || $TERM == "xterm-256color-italic" || $TERM == "screen-256color-italic" || $TERM=="tmux-256color-italic" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Syntax & filetype
syntax on
filetype indent on

"Color & theme
"set background=light
"let g:solarized_contrast="low"
"let g:solarized_contrast="normal"
"let g:solarized_contrast="high"
"let g:solarized_termcolors=256
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
"let g:solarized_visibility="low"
"let g:solarized_visibility="normal"
"let g:solarized_visibility="high"
"colorscheme solarized
colorscheme kalisi
"colorscheme tungsten
"colorscheme base16-solarized

set background=dark

" Diff colors - standard vimdiff colors aren't very helpful, especially not with solarized.
"highlight DiffAdd      cterm=bold  ctermfg=34 ctermbg=234
"highlight DiffChange   cterm=bold  ctermfg=249 ctermbg=240
"highlight DiffDelete   cterm=bold  ctermfg=160   ctermbg=241
"highlight DiffText     cterm=bold  ctermfg=black ctermbg=37

set cursorline
set cursorcolumn
"long lines support"
set colorcolumn=120

" Override Solarized color column colors
"if has('gui_running')
"  highlight ColorColumn guibg=orange
"  "highlight CursorColumn guibg=
"  "highlight CursorLine guibg=
"else
"  highlight ColorColumn ctermbg=52
""  highlight CursorColumn ctermbg=245
" " highlight CursorLine ctermbg=245
"endif

"Code Folding
au FileType cs set foldmethod=syntax
au FileType cs set foldlevelstart=3
au FileType cpp set foldmethod=syntax
au FileType cpp set foldlevelstart=4
au FileType py set foldmethod=syntax
au FileType py set foldlevelstart=4

