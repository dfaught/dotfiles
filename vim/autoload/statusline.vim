scriptencoding utf-8

function! s:branchname() abort
    let l:isGit = 0
    let l:isSVN = 0
    let l:branch = ''
    let l:cwd = expand("%:p:h")
    let l:dirlist = strlen(l:cwd) > 0 ? split(l:cwd, "/") : [""]

    while len(l:dirlist) > 0
        let l:test = "/".join(l:dirlist, "/")."/".".git"
        if isdirectory(l:test)
            let l:isGit = 1
            break
        endif

        call remove(l:dirlist, -1)
    endwhile

    if l:isGit
        let l:headfile = readfile(l:test."/HEAD", '', 1)[0]  
        let l:branch = substitute(l:headfile, "^.*refs\/heads\/", "", "")
    endif

    return l:branch
endfunction

function! statusline#StatusLine(curwin) abort
    let l:isActive = (a:curwin == winnr())

    "left side
    let l:branch = s:branchname()

    if !empty(l:branch)
        let l:sl = "%1*  ".s:branchname()."  "
        let l:sl .= '%9*%f%*'
    else
        let l:sl = '%9*%f%*'
    endif

    let l:sl .= '%7*%m%*'
    let l:sl .= '%8*%r%* '
    let l:sl .= '%w%h%q'

    if &spell == 1 && l:isActive
        let l:sl .= '%1*[SP]%*'
    endif

    "right side
    let l:sl .= '%='
    let l:sl .= '%l- %c| %6*%y %{&enc}:%{&ff}%*'

    return l:sl
endfunction
