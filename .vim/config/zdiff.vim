" Settings for vimdiff
" This file has a "z" in front to ensure it is processed after solarized.vim is processed by Plug

if &diff
  set diffopt+=iwhite
  set cursorcolumn!
  set cursorline!
  set nospell
  let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

" Diff colors - standard vimdiff colors aren't very helpful, especially not with solarized.
highlight DiffAdd      ctermfg=8 ctermbg=2 guifg=#009926 guibg=#002b36
highlight DiffChange   ctermfg=3 ctermbg=8 guifg=#b58900 guibg=#002b36
highlight DiffDelete   ctermfg=1  ctermbg=8 guibg=#dc322f guifg=#002b36
highlight DiffText     cterm=bold ctermfg=8 ctermbg=4 guifg=#002b36 guibg=#268bd2 gui=NONE,bold
