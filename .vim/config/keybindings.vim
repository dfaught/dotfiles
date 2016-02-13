" Keybindings.vim

" Repeat the last command
nnoremap <Leader>. @:

" clear out search
nnoremap <Esc><Esc> :noh<cr>

"tab to move through brackets"
nnoremap <tab> %
vnoremap <tab> %

"actions w %
nnoremap c<tab> c%
nnoremap d<tab> d%

"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
noremap  <silent> <s-tab>       :if &modifiable && !&readonly &&
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly &&
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F1   -  System use - do not map
"    F2   -  Show list of buffers
"    F3   -  set relative number
"    F4   -  System use - do not map
"    F5   -  OmniSharpBuild
"    F6   -  vim-signature: show marks in current buffer
"    F7   -  Trim trailing whites
"    F8   -  CtlrP fuzzy file search
"    F9   -  CtlrP fuzzy buffer search
"    F10  -  Gundo
"    F11  -  Geeknote
"    F12  -  System use - do not map
"-------------------------------------------------------------------------------
nnoremap  <silent><F2>        :ls<CR>
nnoremap  <silent><F3>        :set relativenumber!<CR>
autocmd Filetype cs noremap   <silent><F5>        :wa!<cr>:OmniSharpBuildAsync<cr>
autocmd Filetype cs inoremap  <silent><F5>        <Esc>:wa!<cr>:OmniSharpBuildAsync<cr>
autocmd Filetype c,cpp,h,hpp nnoremap <silent><F5>         :wa!<cr>:Pyclewn<cr>
autocmd Filetype c,cpp,h,hpp inoremap <silent><F5>         <Esc>:wa!<cr>:Pyclewn<cr>
"nnoremap  <silent><F6>        '?
nnoremap  <silent><F7>       :ShowWhiteToggle<CR>
nnoremap  <silent><Leader><F7>     :call TrimWhiteSpace()<CR>
nnoremap  <silent><F8>       :CtrlPMixed<CR>
nnoremap  <silent><F9>       :CtrlPBuffer<CR>
nnoremap <silent><F10> :GundoToggle<CR>

"Crushes previous window allow max space for current.
map   <C-J><Space> <C-W>j<C-W>_
map   <C-K><Space> <C-W>k<C-W>_
map   <C-H><Space> <C-W>h<C-W><Bar>
map   <C-L><Space> <C-W>l<C-W><Bar>

nnoremap   <C-J> <C-W>j
nnoremap   <C-K> <C-W>k
nnoremap   <C-H> <C-W>h
nnoremap   <C-L> <C-W>l

"resize windows
map <C-w><Up>    <C-W>+<C-W>+
map <C-w><Down>  <C-W>-<C-W>-
map <C-w><Left> <C-W>><C-W>>
map <C-w><Right>  <C-W><<C-W><

"window shortcuts
map <Leader>v <C-w>v
map <Leader>h <C-w>s
map <Leader>x :close<CR>
map <Leader>r <C-W>=

" Toggle to last buffer
map <Leader>b <C-^>

" Kill the current buffer
map <Leader>xb :bd<CR>

map <Leader>sa :saveas

" Yank the line
map Y y$
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

"select all
nnoremap <Leader>a ggVG

" Insert line below/above and return to normal
nmap t o<Esc>k
nmap T O<Esc>j

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Toggle current fold"
nnoremap <silent> <leader><space> za
"Close/Open all folds"
nmap <silent> <leader>z zm
nmap <silent> <leader>zz zr

"Fold levels - thanks SPF
"Change these... you never use them.
nmap <leader>F1 :set foldlevel=1<CR>
nmap <leader>F2 :set foldlevel=2<CR>
nmap <leader>F3 :set foldlevel=3<CR>
nmap <leader>F4 :set foldlevel=4<CR>
nmap <leader>F5 :set foldlevel=5<CR>
nmap <leader>F6 :set foldlevel=6<CR>
nmap <leader>F7 :set foldlevel=7<CR>
nmap <leader>F8 :set foldlevel=8<CR>
nmap <leader>F9 :set foldlevel=9<CR>

"V mode mappings
vnoremap < <gv
vnoremap > >gv

"tmux remappings - I map <C-A> to be the tmux trigger key...
"nmap <C-N> <C-A>
"vmap <C-N> <C-A>
"imap <C-N> <C-A>

" ag bindings
nnoremap <Leader>s :Ag!<space>

"make mappings for Dispatch
nmap <Leader>M :Make<CR>
imap <Leader>M <Esc>:wa<CR>:Make<CR>
vmap <Leader>M <Esc>:Make<CR>

nmap <C-CR> :Make!<CR>
imap <C-CR> <Esc>:Make!<CR>
vmap <C-CR> <Esc>:Make!<CR>

nmap <C-E> :Copen<CR>
vmap <C-E> <Esc>:Copen<CR>
imap <C-E> <Esc>:Copen<CR>

nmap <C-M><C-C> :make clean<CR>
imap <C-M><C-C> <Esc>:make clean<CR>
vmap <C-M><C-C> <Esc>:make clean<CR>

"Tagbar mapping
map       ::       <Esc><Esc>:TagbarToggle<CR>

"NERDTree mappings
nmap <silent> <leader>; :NERDTreeFind<CR>
map       ;;                 :NERDTreeToggle<CR>

"Rainbow paren mapping
nnoremap <leader>R :RainbowParenthesesToggle<CR>

"Scracth mappings
nnoremap <Leader>sb :Sscratch<CR>
vnoremap <Leader>sb :Sscratch<CR>
inoremap <Leader>sb :Sscratch<CR>

" YouCompleteMe mappings
noremap <leader>jd :YcmCompleter GoTo<CR>
noremap <leader>jh :YcmCompleter GoToInclude<CR>
noremap <leader>gp :YcmCompleter GetParent<CR>
noremap <leader>gt :YcmCompleter GetType<CR>
noremap <leader>gd :YcmCompleter GetDoc<CR>
noremap <leader>fi  :YcmCompleter FixIt<CR>

" Mark keys
nnoremap <leader>mc :MarkClear<CR>

" Diff mappings
nnoremap <leader>gl :diffg MINE<CR>
nnoremap <leader>gr :diffg THEIRS<CR>
nnoremap <leader>gb :diffg BASE<CR>
nnoremap <leader>nd ]c
nnoremap <leader>pd [c
nnoremap <leader>du :diffupdate<CR>

" Pyclewn mappings
map <leader>p :exe "Cprint" . expand("<cword>")<CR>
map <leader>P :exe "Cprint" . expand("*<cword>")<CR>

"Tabular mappings
nmap <Leader><Tab>= :Tabularize /=<CR>
vmap <Leader><Tab>= :Tabularize /=<CR>
nmap <Leader><Tab>. :Tabularize /\.<CR>
vmap <Leader><Tab>. :Tabularize /\.<CR>
nmap <Leader><Tab>: :Tabularize /:<CR>
vmap <Leader><Tab>: :Tabularize /:<CR>
nmap <Leader><Tab>> :Tabularize /><CR>
vmap <Leader><Tab>> :Tabularize /><CR>
nmap <Leader><Tab>& :Tabularize /&&<CR>
vmap <Leader><Tab>& :Tabularize /&&<CR>

"ViMux mappings
nmap <Leader>vp :VimuxPromptCommand<CR>
vmap <Leader>vp :VimuxPromptCommand<CR>
imap <Leader>vp :VimuxPromptCommand<CR>
nmap <Leader>vl :VimuxRunLastCommand<CR>
vmap <Leader>vl :VimuxRunLastCommand<CR>
imap <Leader>vl :VimuxRunLastCommand<CR>
nmap <Leader>vo :VimuxOpenPane<CR>
vmap <Leader>vo :VimuxOpenPane<CR>
imap <Leader>vo :VimuxOpenPane<CR>

nnoremap <Leader>K :call VimuxRunCommand("cppman ".expand("<cword>"))<CR>

"Geeknote mappings
nmap <Leader>gn :Geeknote<CR>
nmap <Leader>nc :GeeknoteCreateNote<space>

"DoxygenToolkit mappings
nmap <Leader>dx :Dox<CR>

"Zoomwin
nmap <Leader>Z <C-w>o
imap <Leader>Z <C-w>o
vmap <Leader>Z <C-w>o

"insert current buffer name
imap <Leader>fn <c-r>=expand('%:t:r')<CR>

" When you press gv you Ag after the selected text
"vnoremap <silent> av :call VisualSelection('gv', '')<CR>

" paste mode
nnoremap <Leader>tp :set paste!<CR>
inoremap <Leader>tp <Esc>:set paste!<CR>a
vnoremap <Leader>tp :set paste!<CR>

"spelling stuff
nnoremap <leader>w :call FixLastSpellingError()<cr>
