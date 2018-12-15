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
"	F1         - System use - do not map
" 	F2         - Toggle spelling
" 	F3         - Add current line to .gdb - breaks
" 	<Leader>F3 - Remove current line from .gdb - breaks
" 	F4         - System use - do not map
" 	F5         - Dispatch
" 	F6         - Mark word/selection as interesting
" 	F7         - Toggle listchars
" 	<Leader>F7 - Trim trailing whites
" 	F8         - :find files
" 	F9         - :buf, switching to buf
" 	F10        -
" 	F11        - System intercepted
" 	F12        - System use - do not map
"-------------------------------------------------------------------------------

nnoremap  <silent><F2>         :set spell!<CR>
xnoremap  <silent><F2>         :set spell!<CR>
inoremap  <silent><F2>         :set spell!<CR>

augroup     KEYBINDS
	autocmd!
	autocmd FileType cpp,c nmap <F3>         <Plug>VgbAddBreak
	autocmd FileType cpp,c xmap <F3>         <Plug>VgbAddBreak
	autocmd FileType cpp,c nmap <Leader><F3> <Plug>VgbRemBreak
	autocmd FileType cpp,c xmap <Leader><F3> <Plug>VgbRemBreak
	autocmd FileType cs    nnoremap <F5>                 :wa!<cr>:Dispatch<Space>
	autocmd FileType c     nnoremap <F5>                 :wa!<cr>:Make<Space>
	autocmd FileType cpp   nnoremap <F5>                 :wa!<cr>:Make<Space>

	" Used primarly from Mutt
	au BufRead /tmp/neomutt-* nnoremap <CR><CR>  :wq<CR>
augroup END

nnoremap  <silent><F6>         :call InterestingWords('n')<CR>
xnoremap  <silent><F6>         :call InterestingWords('v')<CR>
nnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>
xnoremap  <silent><Leader><F6> :call UncolorAllWords()<CR>

nnoremap  <silent><F7>         :call ToggleList()<CR>
xnoremap  <silent><F7>         :call ToggleList()<CR>
inoremap  <silent><F7>         :call ToggleList()<CR>
nnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>
xnoremap  <silent><Leader><F7> :call TrimWhiteSpace()<CR>

nnoremap  <F8>         :find *
nnoremap  <F9>         :ls<CR>:buffer<Space>

"resize windows
nnoremap <C-w><Up>    <C-W>+<C-W>+
nnoremap <C-w><Down>  <C-W>-<C-W>-
nnoremap <C-w><Left>  <C-W>><C-W>>
nnoremap <C-w><Right> <C-W><<C-W><

"window shortcuts
nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s
nnoremap <Leader>x :close<CR>
nnoremap <Leader>R <C-W>=

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
nnoremap t o<Esc>k
nnoremap T O<Esc>j

" Quickly edit/reload the vimrc file
nnoremap <silent> <Leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <Leader>sv :so $MYVIMRC<CR>

"Toggle current fold"
nnoremap <silent> <Leader>f za
"Close/Open all folds"
nnoremap <silent> <Leader>cz zm
nnoremap <silent> <Leader>zz zr

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

nnoremap  ::  :tag *<Tab>

" Diff mappings
nnoremap <Leader>gl      :diffg MINE<CR>:diffupdate<CR>
nnoremap <Leader>gr      :diffg THEIRS<CR>:diffupdate<CR>
nnoremap <Leader>gb      :diffg BASE<CR>:diffupdate<CR>
nnoremap <silent><Down>  ]c
nnoremap <silent><Up>    [c
nnoremap <localLeader>du :diffupdate<CR>

"Easy Align mappings
xmap <Enter> <Plug>(EasyAlign)
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
nnoremap <Leader>Z :ZoomWin<CR>

" paste mode
nnoremap <silent><Leader>tp :set paste!<CR>
xnoremap <silent><Leader>tp :set paste!<CR>

"spelling stuff
noremap <Leader>w :call FixLastSpellingError()<cr>
noremap <Leader>W z=

nnoremap <silent><Leader>M :call MiddleLine()<CR>
xnoremap <silent><Leader>M :call MiddleLine()<CR>

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
nnoremap <silent><Leader>pc <C-w><C-z>

nnoremap <Leader>sr :'{,'}s/<C-r>=expand('<cword>')<CR>/
nnoremap <Leader>%  :%s/<C-r>=expand('<cword>')<CR>/

" Auto expansions
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [];<Esc>2hi

nnoremap <Leader>i :Ilist /
nnoremap ' `

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" nmap <silent> <Leader>H 
nmap <C-]><C-]> <Plug>(coc-definition)
nmap <C-I><C-I> <Plug>(coc-implementation)
nmap <C-]>t <Plug>(coc-type-definition)
nmap <silent><Leader>r <Plug>(coc-references)
nnoremap <Leader>cl :call CocAction("codeLens","")<CR>
nnoremap <Leader>ho :call CocAction("doHover","")<CR>

nnoremap <silent><Leader>yaf :?^{?-1,/^}/y<CR>

nnoremap == =%
nnoremap / /\v
nnoremap ? ?\v
