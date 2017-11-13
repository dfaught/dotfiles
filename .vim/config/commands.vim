" Removes trailing spaces
function! TrimWhiteSpace()
  let l = line(".")
  let c = col(".")
  %s/\s*$//
  ''
  call cursor(l, c)
endfunction

"should have sudo'd on open dummy
command! W w !sudo tee % > /dev/null

function! FixLastSpellingError()
 let position = getpos('.')[1:3]
 let current_line_length = len(getline('.'))
 normal! [s1z=
 let new_line_length = len(getline('.'))
 let position[1] += (new_line_length - current_line_length)
 call cursor(position)
endfunction

function! LcdToProjectRoot()
  if exists("$WORKSPACE_ROOT")
    lcd $WORKSPACE_ROOT
  endif
endfunction

function! RunUnitTests(cmd)
  let s:vmx_setting = g:VimuxOrientation
  let g:VimuxOrientation = "h"

  call VimuxRunCommand(a:cmd)
  normal! <C-W>=

  let g:VimuxOrientation = s:vmx_setting
endfunction

function! FzfBTags()
  let a:fzf_layout = g:fzf_layout
  let g:fzf_layout = {'right': '~25%'}
  BTags
  let g:fzf_layout = a:fzf_layout
endfunction

function! MiddleLine()
  silent exe 'normal '.(virtcol('$')/2).'|'
endfunction
