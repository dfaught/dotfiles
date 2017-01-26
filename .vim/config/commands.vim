command! -complete=shellcmd -nargs=+ R call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  let isfirst = 1
  let words = []
  for word in split(a:cmdline)
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand(word)
      endif
      let word = shellescape(word, 1)
    endif
      call add(words, word)
  endfor
  let expanded_cmdline = join(words)
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:  ' . a:cmdline)
  call setline(2, 'Expanded to:  ' . expanded_cmdline)
  call append(line('$'), substitute(getline(2), '.', '=', 'g'))
  silent execute '$read !'. expanded_cmdline
  1
endfunction"

" Removes trailing spaces
function! TrimWhiteSpace()
  let l = line(".")
  let c = col(".")
  %s/\s*$//
  ''
  call cursor(l, c)
endfunction

function! Unix2Local()
  let udate = expand("<cword>")
  normal dw
  let l = line(".")
  let c = col(".")-1
  call cursor(l, c)
  "execute '$read !~/scripts/unix2local.sh '.udate
  let @x = system('~/scripts/unix2local.sh '.udate)
  normal "xp
  normal kJ
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

autocmd BufEnter *.cpp exe 'call LcdToProjectRoot()'

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
