
let g:ale_linters = {
      \ 'cpp': ['cppcheck'],
      \ 'c': [],
      \ 'cs': [],
      \}

let g:ale_cppcheck_options = '--enable=all'
let g:ale_sign_error                              = '✘'
let g:ale_sign_warning                            = '☢'

let g:ale_lint_on_insert_leave = 1
