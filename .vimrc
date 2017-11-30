nnoremap <Space> <Nop>
let mapleader=" "
let maplocalleader='\'

"if has("autocmd")
"    "autocmd BufEnter * :lchdir %:p:h
"    autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
"endif

"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif " has("autocmd")

set noshowmode

call plug#begin('~/.vim/plugged')

let $GIT_SSL_NO_VERIFY = 'true'

Plug 'dfaught/my-vim-snippets'

Plug 'Raimondi/delimitMate'

Plug 'w0rp/ale'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'git://repo.or.cz/vcscommand/'

Plug 'panozzaj/vim-autocorrect'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'

Plug 'dfaught/vim-interestingwords'

Plug 'chrisbra/vim-show-whitespace'
Plug 'chrisbra/vim-diff-enhanced'

Plug 'kshenoy/vim-signature'

Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'

" Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'christoomey/vim-tmux-navigator'

Plug 'benmills/vimux'

" Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --clang-completer --cs-completer'}
Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --clang-completer'}

Plug 'regedarek/Zoomwin'

Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'mtth/scratch.vim'

Plug 'junegunn/vim-easy-align'

Plug 'dfaught/vim-solarized8'

Plug 'ciaranm/googletest-syntax'

Plug 'dfaught/algorithm-mnemonics.vim'

Plug 'suan/vim-instant-markdown'

Plug 'sheerun/vim-polyglot'

call plug#end()

runtime! config/**/*
