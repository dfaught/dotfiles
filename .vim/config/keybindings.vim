" Keybindings.vim

" Repeat the last command
nnoremap <Leader>. @:

" clear out search
nnoremap <Esc><Esc> :noh<cr>

"tab to move through brackets"
nnoremap <tab> %
xnoremap <tab> %

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

"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F1   -  System use - do not map
"    F2   -  Toggle spelling
"    F3   -  Undo Tree toggle
"    F4   -  System use - do not map
"    F5   -  Dispatch
"    F6   -  Mark word/selection as interesting
"    F7   -  Trim trailing whites
"    F8   -  FZF fuzzy file search
"    F9   -  FZF fuzzy buffer search
"    F10  -  FZF Marks
"    F11  -  System intercepted
"    F12  -  System use - do not map
"-------------------------------------------------------------------------------
nnoremap  <silent><F2>         :set spell!<CR>
vnoremap  <silent><F2>         :set spell!<CR>
inoremap  <silent><F2>         :set spell!<CR>

nnoremap <silent><F3>          :UndotreeToggle<CR>

augroup KEYBINDS
  autocmd!
  autocmd FileType               cs nnoremap  <F5>  :wa!<cr>:Dispatch<Space>
  autocmd FileType               c nnoremap  <F5>  :wa!<cr>:Make<Space>
  autocmd FileType               cpp nnoremap  <F5>  :wa!<cr>:Make<Space>

  " Used primarly from Mutt
  au BufRead /tmp/neomutt-* nnoremap <CR><CR>  :wq<CR>
augroup END

nnoremap  <silent><F6>         :call InterestingWords('n')<CR>
vnoremap  <silent><F6>         :call InterestingWords('v')<CR>
nnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>
vnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>

nnoremap  <silent><F7>         :ShowWhiteToggle<CR>
vnoremap  <silent><F7>         :ShowWhiteToggle<CR>
inoremap  <silent><F7>         :ShowWhiteToggle<CR>
nnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>
vnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>

nnoremap  <silent><F8>         :Files<CR>
inoremap  <silent><F8>         <Esc>:Files<CR>
vnoremap  <silent><F8>         <Esc>:Files<CR>

nnoremap  <silent><F9>         :Buffers<CR>
inoremap  <silent><F9>         <Esc>:Buffers<CR>
vnoremap  <silent><F9>         <Esc>:Buffers<CR>

nnoremap <silent><F10>         :Marks<CR>

"noremap   <C-J> <C-W>j
"noremap   <C-K> <C-W>k
"noremap   <C-H> <C-W>h
"noremap   <C-L> <C-W>l

"resize windows
nmap <C-w><Up>    <C-W>+<C-W>+
nmap <C-w><Down>  <C-W>-<C-W>-
nmap <C-w><Left>  <C-W>><C-W>>
nmap <C-w><Right> <C-W><<C-W><

"window shortcuts
map <Leader>v <C-w>v
map <Leader>h <C-w>s
map <Leader>x :close<CR>
map <Leader>r <C-W>=

" Toggle to last buffer
nnoremap <BS> <C-^>

" Kill the current buffer
nnoremap <Leader>xb :bd<CR>

nnoremap <Leader>sa      :saveas<Space>
nnoremap <Leader><Space> :w<CR>

" Yank the line
nnoremap Y y$
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
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

"Toggle current fold"
nnoremap <silent> <Leader>f za
"Close/Open all folds"
nmap <silent> <Leader>cz zm
nmap <silent> <Leader>zz zr

"V mode mappings
vnoremap < <gv
vnoremap > >gv

" search bindings
nnoremap <Leader>s :Grepper<CR>
nmap <Leader>gs <plug>(GrepperOperator)
xmap <Leader>gs <plug>(GrepperOperator)

"make mappings for Dispatch
nmap <C-CR> :Make!<Space>
vmap <C-CR> <Esc>:Make!<Space>
nmap <C-M><C-C> :make clean<CR>
vmap <C-M><C-C> <Esc>:make clean<CR>

"fzf buffer tags mapping
nnoremap  <silent> ::  :call FzfBTags()<CR>

" YouCompleteMe mappings
noremap <Leader>jd :YcmCompleter GoTo<CR>
noremap <Leader>jh :YcmCompleter GoToInclude<CR>
noremap <Leader>gp :YcmCompleter GetParent<CR>
noremap <Leader>gt :YcmCompleter GetType<CR>
noremap <Leader>gd :YcmCompleter GetDoc<CR>
noremap <Leader>fi :YcmCompleter FixIt<CR>

" Diff mappings
nnoremap <Leader>gl      :diffg MINE<CR>:diffupdate<CR>
nnoremap <Leader>gr      :diffg THEIRS<CR>:diffupdate<CR>
nnoremap <Leader>gb      :diffg BASE<CR>:diffupdate<CR>
nmap <silent><Down>  ]c
nmap <silent><Up>    [c
nnoremap <localLeader>du :diffupdate<CR>

"Easy Align mappings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"ViMux mappings
nnoremap <Leader>vp :VimuxPromptCommand<CR>
nnoremap <Leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vo :VimuxOpenPane<CR>
nnoremap <Leader>vq :VimuxCloseRunner<CR>

nnoremap <Leader>ut :call RunUnitTests("./tests.sh")<CR>

nnoremap <silent><Leader>m :call VimuxRunCommand("cppman ".expand("<cword>"))<CR>
vnoremap <silent><Leader>m :call VimuxRunCommand("cppman ".expand("<cword>"))<CR>

"DoxygenToolkit mappings
nmap <Leader>dx :Dox<CR>

"Zoomwin
nmap <Leader>Z <C-w>o
vmap <Leader>Z <C-w>o

" paste mode
nnoremap <Leader>tp :set paste!<CR>
vnoremap <Leader>tp :set paste!<CR>

"spelling stuff
noremap <Leader>w :call FixLastSpellingError()<cr>
noremap <Leader>W z=


" Experimental stuff or stuff to try below this line
nnoremap <S-K> i<CR><ESC>k$
nnoremap <silent><Leader>M :call MiddleLine()<CR>
vnoremap <silent><Leader>M :call MiddleLine()<CR>

nmap <silent><Leader>an <Plug>(ale_next_wrap)
nmap <silent><Leader>ap <Plug>(ale_previous_wrap)

