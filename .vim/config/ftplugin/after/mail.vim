"Mutt.vim
"

" Define the default highlighting.
hi def link mailVerbatim          Special
hi def link mailHeader            Statement
hi def link mailHeaderKey         Type
hi def link mailSignature         PreProc
hi def link mailHeaderEmail       mailEmail
hi def link mailEmail             Identifier
hi def link mailURL               String
hi def link mailSubject           Title
hi def link mailQuoted1           Statement
hi def link mailQuoted2           Identifier
hi def link mailQuoted3           Constant
hi def link mailQuoted4           Type
hi def link mailQuoted5           PreProc
hi def link mailQuoted6           Todo
hi def link mailQuoteExp1         mailQuoted1
hi def link mailQuoteExp2         mailQuoted2
hi def link mailQuoteExp3         mailQuoted3
hi def link mailQuoteExp4         mailQuoted4
hi def link mailQuoteExp5         mailQuoted5
hi def link mailQuoteExp6         mailQuoted6

augroup MUTT
  autocmd!
  autocmd BufRead /tmp/neomutt-* set tw=120
  autocmd BufRead /tmp/neomutt-* setlocal fo+=awnq
  autocmd BufRead /tmp/neomutt-* call AutoCorrect()
  autocmd BufRead /tmp/neomutt-* setlocal spell
  autocmd BufRead /tmp/neomutt-* set ft=mail
  " autocmd BufRead,BufWrite /tmp/neomutt-* :normal gqG
augroup END

" Set up formatlistpat to handle various denotions of indention/ hierarchy
set formatlistpat=
" Leading whitespace
set formatlistpat+=^\\s*
" Start class
set formatlistpat+=[
" Optionially match opening punctuation
set formatlistpat+=\\[({]\\?
" Start group
set formatlistpat+=\\(
" A number
set formatlistpat+=[0-9]\\+
" Roman numerals
set formatlistpat+=\\\|[iIvVxXlLcCdDmM]\\+
" A single letter
set formatlistpat+=\\\|[a-zA-Z]
" End group
set formatlistpat+=\\)
" Closing punctuation
set formatlistpat+=[\\]:.)}
" End class
set formatlistpat+=]
" One or more spaces
set formatlistpat+=\\s\\+
" Or ASCII style bullet points
set formatlistpat+=\\\|^\\s*[-+o*]\\s\\+


