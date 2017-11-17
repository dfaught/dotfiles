scriptencoding utf-8

let g:currentmode={
    \ 'n'  : 'N ',
    \ 'no' : 'NOP',
    \ 'v'  : 'V ',
    \ 'V'  : 'VL ',
    \ '' : 'VB',
    \ 's'  : 'S',
    \ 'S'  : 'SL',
    \ '' : 'SB',
    \ 'i'  : 'I ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'VR',
    \ 'c'  : 'C',
    \ 'cv' : 'VEx ',
    \ 'ce' : 'Ex ',
    \ 'r'  : 'Prompt ',
    \ 'rm' : 'More ',
    \ 'r?' : 'Confirm ',
    \ '!'  : 'Shell ',
    \ 't'  : 'Terminal '
    \}

let g:modecolor={
    \ 'n'  : '%1* ',
    \ 'no'  : '%1* ',
    \ 'v'  : '%2* ',
    \ 'V'  : '%2* ',
    \ '' : '%2* ',
    \ 's'  : '%5* ',
    \ 'S'  : '%5* ',
    \ '' : '%5* ',
    \ 'i'  : '%3* ',
    \ 'R'  : '%4* ',
    \ 'Rv' : '%4* ',
    \ 'c'  : '%6* ',
    \ 'cv' : '%6* ',
    \ 'ce' : '%6* ',
    \ 'r'  : '',
    \ 'rm' : '',
    \ 'r?' : '',
    \ '!'  : '',
    \ 't'  : ''
    \}

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

function! statusline#StatusLine() abort
  "left side
  let l:sl = g:modecolor[mode()]
  let l:sl .= '%{g:currentmode[mode()]}%*'

  if &modified
    let l:sl .= '%#WarningMsg# %f %m %r '
  else

    let l:sl .= '%f %m %r '
  endif

  let l:sl .= '%y '

  "right side
  let l:sl .= '%= '
  let l:sl .= '%c| '
  let l:sl .= '%{&enc}:%{&ff} '

  if statusline#YCMGetWarning() > 0
    let l:warn = statusline#YCMGetWarning() + statuslne#ALEGetWarning()
    let l:sl .= ' %#WarningMsg# W:%{l:warn}'
  endif

  if statusline#YCMGetError() > 0
    let l:error = statusline#YCMGetError() + statuslne#ALEGetError()
    let l:sl .= '%#ErrorMsg# E:%{l:error}'
  endif

  return l:sl
endfunction
