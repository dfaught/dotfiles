scriptencoding utf-8

" YCM error functions taken directly frm Airline plugin...
function! statusline#YCMGetError()
  if exists(':YcmDiag') && exists("*youcompleteme#GetWarningCount")
   return youcompleteme#GetWarningCount()
  endif

  return ''
endfunction

function! statusline#YCMGetWarning()
  if exists(':YcmDiag') && exists("*youcompleteme#GetErrorCount")
    return youcompleteme#GetErrorCount()
  endif

  return ''
endfunction

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
  if !exists(':ALELint')
    return ''
  endif

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
  if !exists(':ALELint')
    return ''
  endif

  let l:res = ale#statusline#Status()
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

function! statusline#StatusLine(curwin) abort
  let a:isActive = (a:curwin == winnr())

  "left side
  let l:sl = '%9*%f%*'
  let l:sl .= '%7*%m%*'
  let l:sl .= '%8*%r%* '
  let l:sl .= '%w%h%q'

  if &spell == 1 && a:isActive
    let l:sl .= '%1*[SP]%*'
  endif

  "right side
  let l:sl .= '%='
  let l:sl .= '%c| %6*%y %{&enc}:%{&ff}%*'

"   if ( statusline#YCMGetWarning() > 0 || statusline#ALEGetWarning() > 0 )
"     let l:warn = statusline#YCMGetWarning() + statusline#ALEGetWarning()
"     let l:sl .= ' %#WarningMsg# W:%{l:warn}'
"   endif

"   if ( statusline#YCMGetError() > 0 || statusline#ALEGetError() > 0 )
"     let l:error = statusline#YCMGetError() + statusline#ALEGetError()
"     let l:sl .= '%#ErrorMsg# E:%{l:error}'
"   endif

  return l:sl
endfunction
