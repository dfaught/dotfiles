"general_settings.vim

set cin!
set autoread
set nobackup
set nowb
set noswapfile
set modeline

"text width & wrap
set nowrap
set smarttab
set textwidth=120
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set path=**

set wildmenu
set wildmode=list:longest
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*.so,*.pyc,*.o,*.a,*.la,*.dll,*.class
set wildignore+=tags
set wildcharm=<Tab>

set scrolljump=5
set scrolloff=3

set infercase
set smartcase

"indent
set autoindent
set smartindent

" Search & replace stuff.
set gdefault
set hls
set incsearch

set backspace=indent,eol,start
set mousehide

set vb t_vb=

" Spelling is annoying in code, I find it so even in comments, turn off by default.  Vim config for mutt will turn this back on.
set nospell

"Allow dir local vimrc for project specific settings and mappings
set exrc
set secure

augroup GEERAL
  autocmd!
  autocmd BufEnter *.cpp exe 'call LcdToProjectRoot()'
  autocmd BufWrite * exe 'call TrimWhiteSpace()'
  autocmd FileType cpp set keywordprg=cppman
augroup END

if executable("rg")
  set grepprg=rg\ --nocolor\ --nogroup\ --ignorecase\ --vimgrep
elseif executable("ag")
  set grepprg=ag\ --nocolor\ --nogroup\ --ignorecase\ --vimgrep
endif
set grepformat^=%f-%l:%c:%m
