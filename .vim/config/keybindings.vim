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
"    F3   -
"    F4   -  System use - do not map
"    F5   -  Dispatch
"    F6   -  Mark word/selection as interesting
"    F7   -  Trim trailing whites
"    F8   -  :find files
"    F9   -  :buf, switching to buf
"    F10  -
"    F11  -  System intercepted
"    F12  -  System use - do not map
"-------------------------------------------------------------------------------
nnoremap  <silent><F2>         :set spell!<CR>
xnoremap  <silent><F2>         :set spell!<CR>
inoremap  <silent><F2>         :set spell!<CR>

augroup KEYBINDS
  autocmd!
  autocmd FileType               cs nnoremap  <F5>  :wa!<cr>:Dispatch<Space>
  autocmd FileType               c nnoremap  <F5>  :wa!<cr>:Make<Space>
  autocmd FileType               cpp nnoremap  <F5>  :wa!<cr>:Make<Space>

  " Used primarly from Mutt
  au BufRead /tmp/neomutt-* nnoremap <CR><CR>  :wq<CR>
augroup END

nnoremap  <silent><F6>         :call InterestingWords('n')<CR>
xnoremap  <silent><F6>         :call InterestingWords('v')<CR>
nnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>
xnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>

nnoremap  <silent><F7>         :ShowWhiteToggle<CR>
xnoremap  <silent><F7>         :ShowWhiteToggle<CR>
inoremap  <silent><F7>         :ShowWhiteToggle<CR>
nnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>
xnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>

nnoremap  <F8>         :find *

nnoremap  <F9>         :ls<CR>:buffer<Space>

" noremap   <C-J> <C-W>j
" noremap   <C-K> <C-W>k
" noremap   <C-H> <C-W>h
" noremap   <C-L> <C-W>l

"resize windows
nmap <C-w><Up>    <C-W>+<C-W>+
nmap <C-w><Down>  <C-W>-<C-W>-
nmap <C-w><Left>  <C-W>><C-W>>
nmap <C-w><Right> <C-W><<C-W><

"window shortcuts
map <Leader>v <C-w>v
map <Leader>h <C-w>s
map <Leader>x :close<CR>
map <Leader>R <C-W>=

" Toggle to last buffer
nnoremap <BS> <C-^>

" Kill the current buffer
nnoremap <Leader>xb :bd<CR>

nnoremap <Leader>sa      :saveas<Space>
nnoremap <Leader><Space> :w<CR>

" Yank the line
nnoremap Y y$
xnoremap <Leader>y "+y
xnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
xnoremap <Leader>p "+p
xnoremap <Leader>P "+P

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
xnoremap < <gv
xnoremap > >gv

" search bindings
command! -nargs=+ -complete=file_in_path -bar MyGrep silent! grep! <args> | redraw! | copen 40
nnoremap <silent><Leader>s :MyGrep <C-r><C-w><CR>
nnoremap <Leader>S :MyGrep<Space>

"make mappings for Dispatch
nmap <Leader><CR> :Dispatch!<Space>
vmap <Leader><CR> <Esc>:Make!<Space>
nmap <C-M><C-C> :make clean<CR>
vmap <C-M><C-C> <Esc>:make clean<CR>

"fzf buffer tags mapping
nnoremap  ::  :tag *<Tab>

" YouCompleteMe mappings
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

" Move this to a project specific vimrc someday, since it only works for a specific project setup
nnoremap <Leader>ut :call RunUnitTests("./tests.sh")<CR>

"DoxygenToolkit mappings
nnoremap <Leader>dx :Dox<CR>
nnoremap <Leader>da :DoxAuthor<CR>

"Zoomwin
nmap <Leader>Z <C-w>o
vmap <Leader>Z <C-w>o

" paste mode
nnoremap <silent><Leader>tp :set paste!<CR>
xnoremap <silent><Leader>tp :set paste!<CR>

"spelling stuff
noremap <Leader>w :call FixLastSpellingError()<cr>
noremap <Leader>W z=

" Experimental stuff or stuff to try below this line
" nnoremap <S-K> i<CR><ESC>k$
nnoremap <silent><Leader>M :call MiddleLine()<CR>
xnoremap <silent><Leader>M :call MiddleLine()<CR>

nmap <silent><Leader>an <Plug>(ale_next_wrap)
nmap <silent><Leader>ap <Plug>(ale_previous_wrap)

" pinched from /u/romainl vimrc...  If you're going to steal, steal from the best.
"""""""""""""""""""""""""""""""""
" JUGGLING WITH WORDS AND LINES "
"""""""""""""""""""""""""""""""""
nnoremap <Leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <Leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>:noh<CR>
nnoremap <silent> <Leader><Up>   :<C-u>move-2<CR>==
nnoremap <silent> <Leader><Down> :<C-u>move+<CR>==
xnoremap <silent> <Leader><Up>   :move-2<CR>gv=gv
xnoremap <silent> <Leader><Down> :move'>+<CR>gv=gv

nnoremap <silent><Leader>qo :copen<CR>
nnoremap <silent><Leader>qc :cclose<CR>
nnoremap <silent><Leader>lo :lopen<CR>
nnoremap <silent><Leader>lc :lclose<CR>

nnoremap <Leader>sr :'{,'}s/<C-r>=expand('<cword>')<CR>/
nnoremap <Leader>%  :%s/<C-r>=expand('<cword>')<CR>/

" Auto expansions
inoremap (<Space> (<Space><Space>)<ESC>hi
inoremap (; (<Space><Space>);<ESC>2hi
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [];<Esc>2hi

nnoremap <Leader>i :ilist /

command! -nargs=+ MyTagList silent! :ilist! <args> | redraw! | copen 40
" nnoremap [I :MyTagList <C-r><C-w><CR>

" nnoremap [I [I:ijump  <C-r><C-w><S-Left><Left><Left>
" nnoremap ]I ]I:ijump  <C-r><C-w><S-Left><Left><Left>
