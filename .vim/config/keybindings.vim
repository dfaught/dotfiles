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
nnoremap y<tab> y%

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
"    F2   -  Toggle spelling
"    F3   -  Unused
"    F4   -  System use - do not map
"    F5   -  Dispatch
"    F6   -  vim-signature: show marks in current buffer
"    F7   -  Trim trailing whites
"    F8   -  CtlrP fuzzy file search
"    F9   -  CtlrP fuzzy buffer search
"    F10  -  Gundo
"    F11  -  Unused
"    F12  -  System use - do not map
"-------------------------------------------------------------------------------
nnoremap  <silent><F2>        :set spell!<CR>
vnoremap  <silent><F2>        :set spell!<CR>
inoremap  <silent><F2>        :set spell!<CR>

"nnoremap  <silent><F3>        :set relativenumber!<CR>

nnoremap  <silent><F5>                :wa!<cr>:Dispatch<cr>
inoremap  <silent><F5>                <Esc>:wa!<cr>:Dispatch<cr>
nnoremap  <silent><Leader><F5>        :wa!<cr>:Pyclewn<cr>

nnoremap  <silent><F6>         :call InterestingWords('n')<CR>
inoremap  <silent><F6>         :call InterestingWords('n')<CR>
vnoremap  <silent><F6>         :call InterestingWords('v')<CR>
nnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>
inoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>
vnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>

nnoremap  <silent><F7>         :ShowWhiteToggle<CR>
vnoremap  <silent><F7>         :ShowWhiteToggle<CR>
inoremap  <silent><F7>         :ShowWhiteToggle<CR>
nnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>
vnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>

nnoremap  <silent><F8>       :CtrlPMixed<CR>
inoremap  <silent><F8>       <Esc>:CtrlPMixed<CR>
vnoremap  <silent><F8>       <Esc>:CtrlPMixed<CR>

nnoremap  <silent><F9>       :CtrlPBuffer<CR>
inoremap  <silent><F9>       <Esc>:CtrlPBuffer<CR>
vnoremap  <silent><F9>       <Esc>:CtrlPBuffer<CR>

nnoremap <silent><F10> :GundoToggle<CR>

"noremap   <C-J> <C-W>j
"noremap   <C-K> <C-W>k
"noremap   <C-H> <C-W>h
"noremap   <C-L> <C-W>l

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
"map <Leader>b <C-^>
map <BS> <C-^>

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

"yank all to clipboard
nnoremap <Leader>A :%y+<CR>

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
nmap <silent> <leader>cz zm
nmap <silent> <leader>zz zr

"V mode mappings
vnoremap < <gv
vnoremap > >gv

" ag bindings
nnoremap <Leader>s :Ag

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

" Diff mappings
nnoremap <leader>gl :diffg MINE<CR>:diffupdate<CR>
nnoremap <leader>gr :diffg THEIRS<CR>:diffupdate<CR>
nnoremap <leader>gb :diffg BASE<CR>:diffupdate<CR>
nnoremap <localleader>n ]c
nnoremap <localleader>p [c
nnoremap <localleader>du :diffupdate<CR>

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
noremap <leader>w :call FixLastSpellingError()<cr>
noremap <leader>W z=

nnoremap <silent> <Down> :<C-u>call Undojoin()<CR>:<C-u>move +1<CR>==:<C-u>call SetUndojoinFlag('n')<CR>
nnoremap <silent> <Up>   :<C-u>call Undojoin()<CR>:<C-u>move -2<CR>==:<C-u>call SetUndojoinFlag('n')<CR>
xnoremap <silent> <Down> :<C-u>call Undojoin()<CR>:<C-u>'<,'>move '>+1<CR>gv=:<C-u>call SetUndojoinFlag('v')<CR>gv
xnoremap <silent> <Up>   :<C-u>call Undojoin()<CR>:<C-u>'<,'>move '<-2<CR>gv=:<C-u>call SetUndojoinFlag('v')<CR>gv>'

" Experimental stuff or stuff to try below this line
nnoremap <Space><Space> :w<CR>

" Used primarly from Mutt
nnoremap Q  :wq<CR>
