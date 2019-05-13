" Set some file type settings for cpp

augroup GEERAL
  autocmd!
  " autocmd BufEnter *.cpp exe 'call LcdToProjectRoot()'
  autocmd FileType cpp set keywordprg=~/bin/mancpp.sh
augroup END

let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0
