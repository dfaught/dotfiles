" Set some file type settings for cpp

set keywordprg=~/bin/mancpp.sh
set tags=tags;/
set cinoptions=g0,c4,b1,l1
set formatprg=astyle
set omnifunc=

"Check for current job's build system
if filereadable("build.sh")
    set makeprg=./build.sh\ --debug\ --nodep\ --notest\ --noconfig\ --flags=\"-O0\"
endif

highlight LspCxxHlGroupMemberVariable guifg=#a29d91 cterm=NONE,italic gui=NONE,italic
highlight LspCxxHlGroupEnumConstant guifg=#6c71c4 cterm=NONE,bold gui=NONE,bold
highlight LspCxxHlSymEnum guifg=#6c71c4 cterm=NONE gui=NONE

