Define the default highlighting.
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

setlocal tw=120
setlocal fo+=njwa
setlocal spell

" Set up formatlistpat to handle various denotions of indention/ hierarchy
setlocal formatlistpat=
" Leading whitespace
setlocal formatlistpat+=^\\s*
" Start class
setlocal formatlistpat+=[
" Optionially match opening punctuation
setlocal formatlistpat+=\\[({]\\?
" Start group
setlocal formatlistpat+=\\(
" A number
setlocal formatlistpat+=[0-9]\\+
" Roman numerals
setlocal formatlistpat+=\\\|[iIvVxXlLcCdDmM]\\+
" A single letter
setlocal formatlistpat+=\\\|[a-zA-Z]
" End group
setlocal formatlistpat+=\\)
" Closing punctuation
setlocal formatlistpat+=[\\]:.)}
" End class
setlocal formatlistpat+=]
" One or more spaces
setlocal formatlistpat+=\\s\\+
" Or ASCII style bullet points
setlocal formatlistpat+=\\\|^\\s*[-+o*]\\s\\+

