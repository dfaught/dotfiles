" Themes, colors, syntax etc.
set showcmd
set showmatch
" set noshowmode
set showmode
set laststatus=2

"linenumbers
set number
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

hi User1 guibg=#073642 guifg=#859900 cterm=NONE,bold gui=NONE,bold
hi User2 guibg=#073642 guifg=#d33682 cterm=NONE,bold gui=NONE,bold
hi User3 guibg=#073642 guifg=#2aa198 cterm=NONE,bold gui=NONE,bold
hi User4 guibg=#073642 guifg=#cb4b16 cterm=NONE,bold gui=NONE,bold
hi User5 guibg=#073642 guifg=#d33682 cterm=NONE,bold gui=NONE,bold
hi User6 guibg=#073642 guifg=#6c71c4 cterm=NONE gui=NONE
hi User7 guibg=#073642 guifg=#cb4b16 cterm=NONE,bold gui=NONE,bold
hi User8 guibg=#073642 guifg=#dc322f cterm=NONE,bold gui=NONE,bold
hi User9 guibg=#073642 guifg=#b58900 cterm=NONE gui=NONE

function! s:UpdateStatus()
  for win in range(1, winnr('$'))
    call setwinvar(win, '&statusline', '%!statusline#StatusLine(' . win . ')')
  endfor
endfunction

augroup DISPLAY
  autocmd!
  autocmd VimResized * wincmd =
  autocmd VimEnter,WinEnter,BufWinEnter,BufEnter,BufLeave * call <SID>UpdateStatus()
augroup END

" netrw stuff
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_sizestyle = 'H'
let g:netrw_winsize = '25'
