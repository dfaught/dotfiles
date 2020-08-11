" Set some file type settings for cpp

set keywordprg=~/bin/mancpp.sh
set tags=tags;/
set cinoptions=g0,c4,b1,l1
set formatprg=astyle

" let OmniCpp_NamespaceSearch = 2
" let OmniCpp_ShowPrototypeInAbbr = 1
" let OmniCpp_MayCompleteDot = 0
" let OmniCpp_MayCompleteArrow = 0
" let OmniCpp_MayCompleteScope = 0

set makeprg=./build.sh\ --debug\ --nodep\ --notest\ --noconfig\ --flags=\"-O0\"
