"Signify!
"
let g:signify_vcs_list = [ 'svn', 'git', 'hg' ]
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '⌧'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '♻'
let g:signify_sign_changedelete      = g:signify_sign_change
let g:signify_sign_show_count = 0

highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119 guifg=#00ff00
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167 guifg=#dc322f
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227 guifg=#a2982a
