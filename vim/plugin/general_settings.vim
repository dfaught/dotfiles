"general_settings.vim

set autoread
set nobackup
set nowb
set noswapfile
set modeline

"text width & wrap
set nowrap
set smarttab
set textwidth=120
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" set path+=**

set wildmenu
set wildmode=list:longest
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*.so,*.pyc,*.o,*.a,*.la,*.dll,*.class
set wildignore+=tags
set wildcharm=<Tab>

set scrolljump=5
set scrolloff=3

set noignorecase

"indent
set autoindent
filetype plugin indent on

" Search & replace stuff.
set gdefault
set hlsearch
set incsearch

set backspace=indent,eol,start
set mousehide
set novisualbell

" Spelling is annoying in code, I find it so even in comments, turn off by default.
" Vim config for mutt will turn this back on, becuzz wurdz hilp peepol unerstan me.
set nospell

"Allow dir local vimrc for project specific settings and mappings
set exrc
set secure

if executable("rg")
  set grepprg=rg\ --vimgrep
elseif executable("ag")
  set grepprg=ag\ --vimgrep
endif
set grepformat^=%f-%l:%c:%m

set showfulltag
set completeopt=menuone,preview
