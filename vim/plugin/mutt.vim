function! IsMailReply()
    if line('$') > 1
        normal! gqGgg
    endif

    :put! =\"\n\n\n\"
    normal! 2G
endfunction

augroup MAIL
    autocmd!
    autocmd FileType mail :call AutoCorrect()
    autocmd FileType mail %s/\[.\{-}m//
    autocmd FileType mail %s/\[[0-9]\{1,2\}\]//
    autocmd FileType mail :call IsMailReply()
augroup END
