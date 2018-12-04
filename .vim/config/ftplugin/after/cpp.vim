" Set some file type settings for cpp

augroup GEERAL
  autocmd!
  " autocmd BufEnter *.cpp exe 'call LcdToProjectRoot()'
  autocmd FileType cpp set keywordprg=~/bin/mancpp.sh
augroup END
