scriptencoding utf-8

"Acquired from https://github.com/ahmedelgabri/dotfiles/blob/master/vim/.vim/autoload/statusline.vim#L39-L76
" For a more fancy ale statusline
function! statusline#ALEGetOk()
  let l:res = ale#statusline#Status()
  if l:res ==# 'OK'
    return '•'
  else
    return ''
  endif
endfunction

function! statusline#ALEGetError()
  let l:res = ale#statusline#Status()
  if l:res ==# 'OK'
    return ''
  else
    let l:e_w = split(l:res)
    if len(l:e_w) == 2 || match(l:e_w, 'E') > -1
      return '•' . matchstr(l:e_w[0], '\d\+')
    else
      return ''
    endif
  endif
endfunction

function! statusline#ALEGetWarning()
  let l:res = ale#statusline#Status()
  if l:res ==# 'OK'
    return ''
  else
    let l:e_w = split(l:res)
    if len(l:e_w) == 2
      return '•' . matchstr(l:e_w[1], '\d\+')
    elseif match(l:e_w, 'W') > -1
      return '•' . matchstr(l:e_w[0], '\d\+')
    else
      return ''
    endif
  endif
endfunction
