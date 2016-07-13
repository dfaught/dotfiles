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

Plug 'rking/ag.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'Raimondi/delimitMate'

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':'NERDTreeToggle' }
Plug 'scrooloose/syntastic'

Plug 'ervandew/supertab'

Plug 'godlygeek/tabular'

Plug 'majutsushi/tagbar'

Plug 'edkolev/tmuxline.vim'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'git://repo.or.cz/vcscommand'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'panozzaj/vim-autocorrect'

Plug 'craigemery/vim-autotag'

Plug 'altercation/vim-colors-solarized'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'

Plug 'neilagabriel/vim-geeknote'

Plug 'alepex/vim-gtest'

Plug 'lfv89/vim-interestingwords'

Plug 'dzeban/vim-log-syntax'

Plug 'chrisbra/vim-show-whitespace'
Plug 'chrisbra/vim-diff-enhanced'

Plug 'kshenoy/vim-signature'

Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'

Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'christoomey/vim-tmux-navigator'

Plug 'benmills/vimux'

Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --clang-completer --omnisharp-completer'}

Plug 'regedarek/Zoomwin'

call plug#end()

runtime! config/**/*
