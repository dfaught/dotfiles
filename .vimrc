nnoremap <Space> <Nop>
let mapleader=" "
let maplocalleader='\'

if has("autocmd")
    "autocmd BufEnter * :lchdir %:p:h
    autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
    autocmd FileType mail set spell
endif

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

Plug 'ervandew/supertab'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'git://repo.or.cz/vcscommand/'

Plug 'dfaught/vim-airline'
Plug 'dfaught/vim-airline-themes'

Plug 'panozzaj/vim-autocorrect'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'

Plug 'dfaught/vim-interestingwords'

Plug 'dfaught/vim-log-syntax'

Plug 'chrisbra/vim-show-whitespace'
Plug 'chrisbra/vim-diff-enhanced'

Plug 'kshenoy/vim-signature'

Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-grepper'

Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'christoomey/vim-tmux-navigator'

Plug 'benmills/vimux'

Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --clang-completer --omnisharp-completer'}

Plug 'regedarek/Zoomwin'

Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'mtth/scratch.vim'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf',  { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

Plug 'dfaught/vim-solarized8'
Plug 'altercation/vim-colors-solarized'

Plug 'ciaranm/googletest-syntax'

Plug 'mbbill/undotree'

Plug 'dfaught/algorithm-mnemonics.vim'

Plug 'suan/vim-instant-markdown'

call plug#end()

runtime! config/**/*
