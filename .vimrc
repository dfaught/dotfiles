filetype plugin off
execute pathogen#infect()
filetype plugin on

let mapleader=','
let maplocalleader='-'

runtime! config/**/*

if has("autocmd")
    autocmd BufEnter * :lchdir %:p:h
    autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
    autocmd FileType mail set spell
endif

"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif " has("autocmd")

"set showcmd
