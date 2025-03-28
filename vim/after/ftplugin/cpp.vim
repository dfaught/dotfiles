" Set some file type settings for cpp

set keywordprg=~/bin/mancpp.sh
set tags=tags;/
set cinoptions=g0,c4,b1,l1,=0
set formatprg=astyle
" set equalprg=astyle
set omnifunc=

"Check for current job's build system
set makeprg=build\ --debug\ --nodep\ --notest\ --compiler_flags="-O0\ -no-omit-frame-pointer"\ --buildPreBuilt

"hi default LspCxxHlGroupNamespace ctermfg=Yellow guifg=#BBBB00 cterm=none gui=none
highlight LspCxxHlGroupMemberVariable guifg=#a29d91 cterm=NONE,italic gui=NONE,bold
highlight LspCxxHlGroupEnumConstant guifg=#6c71c4 cterm=NONE,bold gui=NONE,bold


" Type
 hi default link LspCxxHlSymClass Type
 hi default link LspCxxHlSymStruct Type
highlight LspCxxHlSymEnum guifg=#6c71c4 cterm=NONE gui=NONE
highlight LspCxxHlSymTypeAlias guifg=#b58900 gui=NONE
" hi default link LspCxxHlSymTypeParameter Type
"
" " Function
" hi default link LspCxxHlSymFunction Function
" hi default link LspCxxHlSymMethod Function
" hi default link LspCxxHlSymStaticMethod Function
hi default LspCxxHlSymConstructor guifg=#268bd2 gui=reverse
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
highlight LspCxxHlSymParameter guifg=#839496 gui=NONE,italic
" hi default link LspCxxHlSymField LspCxxHlGroupMemberVariable
