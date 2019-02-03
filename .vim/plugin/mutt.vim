augroup MAIL
    autocmd!
    autocmd FileType mail call AutoCorrect()
    autocmd FileType mail %s/\[.\{-}m//
augroup END
