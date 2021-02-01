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

"hi default LspCxxHlGroupNamespace ctermfg=Yellow guifg=#BBBB00 cterm=none gui=none
highlight LspCxxHlGroupMemberVariable guifg=#a29d91 cterm=NONE,italic gui=NONE,italic
highlight LspCxxHlGroupEnumConstant guifg=#6c71c4 cterm=NONE,bold gui=NONE,bold


" Type
" hi default link LspCxxHlSymClass Type
" hi default link LspCxxHlSymStruct Type
highlight LspCxxHlSymEnum guifg=#6c71c4 cterm=NONE gui=NONE
" hi default link LspCxxHlSymTypeAlias Type
" hi default link LspCxxHlSymTypeParameter Type
"
" " Function
" hi default link LspCxxHlSymFunction Function
" hi default link LspCxxHlSymMethod Function
" hi default link LspCxxHlSymStaticMethod Function
" hi default link LspCxxHlSymConstructor Function
"
" " EnumConstant
" hi default link LspCxxHlSymEnumMember LspCxxHlGroupEnumConstant
"
" " Preprocessor
" hi default link LspCxxHlSymMacro Macro
"
" " Namespace
" hi default link LspCxxHlSymNamespace LspCxxHlGroupNamespace
"
" " Variables
" hi default link LspCxxHlSymVariable Normal
" hi default link LspCxxHlSymParameter Normal
" hi default link LspCxxHlSymField LspCxxHlGroupMemberVariable
