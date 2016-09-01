" Settings for vimdiff

if &diff
  set diffopt+=iwhite
  set cursorcolumn!
  set cursorline!
  set spell!
  let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

" Diff colors - standard vimdiff colors aren't very helpful, especially not with solarized.
highlight DiffAdd      ctermfg=8 ctermbg=2
highlight DiffChange   ctermfg=3 ctermbg=8
highlight DiffDelete   ctermfg=1   ctermbg=8
highlight DiffText     cterm=bold  ctermfg=15 ctermbg=4
