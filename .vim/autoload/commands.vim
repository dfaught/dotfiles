" Removes trailing spaces
function! commands#TrimWhiteSpace()
    let l = line(".")
    let c = col(".")
    %s/\s*$//
    ''
    call cursor(l, c)
endfunction

"should have sudo'd on open dummy
command! W w !sudo tee % > /dev/null

function! commands#FixLastSpellingError()
    let position = getpos('.')[1:3]
    let current_line_length = len(getline('.'))
    normal! [s1z=
    let new_line_length = len(getline('.'))
    let position[1] += (new_line_length - current_line_length)
    call cursor(position)
endfunction

function! commands#LcdToProjectRoot()
    if exists("$WORKSPACE_ROOT")
        lcd $WORKSPACE_ROOT
    endif
endfunction

function! commands#RunUnitTests(cmd)
    let s:vmx_setting = g:VimuxOrientation
    let g:VimuxOrientation = "h"

    call VimuxRunCommand(a:cmd)
    normal! <C-W>=

    let g:VimuxOrientation = s:vmx_setting
endfunction

function! commands#MiddleLine()
    silent exe 'normal '.(virtcol('$')/2).'|'
endfunction

function! commands#ToggleList()
	if &list
		set nolist
	else
		set list
	endif
endfunction
