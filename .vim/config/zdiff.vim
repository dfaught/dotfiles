" Settings for vimdiff
" This file has a "z" in front to ensure it is processed after solarized.vim is processed by Plug

if &diff
  set diffopt+=iwhite
  set cursorcolumn!
  set cursorline!
  set nospell
  let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
  " highlight CursorLine   cterm=NONE guibg=#073642
endif

highlight DiffAdd      ctermfg=8 ctermbg=2 guibg=#263700 guifg=#93a1a1
highlight DiffChange   ctermfg=3 ctermbg=8 guibg=#002c67 guifg=#93a1a1
highlight DiffDelete   ctermfg=1  ctermbg=8 guibg=#620000 guifg=#620000
highlight DiffText     cterm=bold ctermfg=8 ctermbg=4 guifg=#004280 guibg=#268bd2 gui=NONE,bold
