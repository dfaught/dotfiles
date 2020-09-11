" Set some file type settings for cpp

set keywordprg=~/bin/mancpp.sh
set tags=tags;/
set cinoptions=g0,c4,b1,l1
set formatprg=astyle

"Check for current job's build system
if filereadable("build.sh")
    set makeprg=./build.sh\ --debug\ --nodep\ --notest\ --noconfig\ --flags=\"-O0\"
endif
