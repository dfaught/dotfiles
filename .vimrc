nnoremap <Space> <Nop>
let mapleader=" "
let maplocalleader='\'

"if has("autocmd")
"    "autocmd BufEnter * :lchdir %:p:h
"    autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
"endif

call plug#begin('~/.vim/plugged')

let $GIT_SSL_NO_VERIFY = 'true'

Plug 'dfaught/my-vim-snippets'

Plug 'dfaught/vim-log-syntax'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'panozzaj/vim-autocorrect'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'

Plug 'kshenoy/vim-signature'

Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'

Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'christoomey/vim-tmux-navigator'

Plug 'benmills/vimux'

Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'mtth/scratch.vim'

Plug 'junegunn/vim-easy-align'

Plug 'dfaught/vim-solarized8'

Plug 'ciaranm/googletest-syntax'

Plug 'dfaught/algorithm-mnemonics.vim'

Plug 'sheerun/vim-polyglot'

Plug 'romainl/vim-qlist'

Plug 'dfaught/vim-gdb-break'

Plug 'markonm/traces.vim'

Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
