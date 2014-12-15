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
autocmd FileType qf wincmd J
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
