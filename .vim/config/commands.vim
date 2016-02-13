":command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

"function! s:ExecuteInShell(command, bang)
"	let _ = a:bang != '' ? s:_ : a:command == '' ? '' : join(map(split(a:command), 'expand(v:val)'))
"
"	if (_ != '')
"		let s:_ = _
"		let bufnr = bufnr('%')
"		let winnr = bufwinnr('^' . _ . '$')
"		silent! execute  winnr < 0 ? 'belowright new ' . fnameescape(_) : winnr . 'wincmd w'
"		setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile wrap number
"		silent! :%d
"		let message = 'Execute ' . _ . '...'
"		call append(0, message)
"		echo message
"		silent! 2d | resize 1 | redraw
"		silent! execute 'silent! %!'. _
"		silent! execute 'resize ' . line('$')
"		silent! execute 'syntax on'
"		silent! execute 'autocmd BufUnload <buffer> execute bufwinnr(' . bufnr . ') . ''wincmd w'''
"		silent! execute 'autocmd BufEnter <buffer> execute ''resize '' .  line(''$'')'
"		silent! execute 'nnoremap <silent> <buffer> <CR> :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
"		silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
"		silent! execute 'nnoremap <silent> <buffer> <LocalLeader>g :execute bufwinnr(' . bufnr . ') . ''wincmd w''<CR>'
""		nnoremap <silent> <buffer> <C-W>_ :execute 'resize ' . line('$')<CR>
"		silent! syntax on
"	endif
"endfunction

"command! -complete=shellcmd -nargs=* -bang R call s:ExecuteInShell(<q-args>, '<bang>')

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

" Automatically open, but do not go to (if there are errors) the quickfix /
" " location list window, or close it when is has become empty.
" "
" " Note: Must allow nesting of autocmds to enable any customizations for quickfix
" " buffers.
" " Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" " (but not if it's already open). However, as part of the autocmd, this doesn't
" " seem to happen.
"autocmd FileType qf wincmd J
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow

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

"function! VisualSelection(direction, extra_filter) range
    "let l:saved_reg = @"
    "execute "normal! vgvy"

    "let l:pattern = escape(@", '\\/.*$^~[]')
    "let l:pattern = substitute(l:pattern, "\n$", "", "")

    "if a:direction == 'b'
        "execute "normal ?" . l:pattern . "^M"
    "elseif a:direction == 'gv'
        "execute "Ag \"" . l:pattern . "\" " )
    "elseif a:direction == 'replace'
        "call CmdLine("%s" . '/'. l:pattern . '/')
    "elseif a:direction == 'f'
        "execute "normal /" . l:pattern . "^M"
    "endif

    "let @/ = l:pattern
    "let @" = l:saved_reg
"endfunction

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
