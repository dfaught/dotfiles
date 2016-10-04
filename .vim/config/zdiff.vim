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
highlight DiffAdd      ctermfg=8 ctermbg=2
highlight DiffChange   ctermfg=3 ctermbg=8
highlight DiffDelete   ctermfg=1   ctermbg=8
highlight DiffText     cterm=bold ctermfg=8 ctermbg=4
