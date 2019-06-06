" Keybindings.vim

" Repeat the last command
nnoremap <Space>. @:

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
nnoremap  <silent> <s-tab>       :if &modifiable && !&readonly &&
            \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"	F1         - System use - do not map
" 	F2         - Toggle spelling
" 	F3         - Add current line to .gdb - breaks
" 	<Space>F3 - Remove current line from .gdb - breaks
" 	F4         - System use - do not map
" 	F5         - Dispatch
" 	F6         - Mark word/selection as interesting
" 	F7         - Toggle listchars
" 	<Space>F7 - Trim trailing whites
" 	F8         - 
" 	F9         - 
" 	F10        -
" 	F11        - System intercepted
" 	F12        - System use - do not map
"-------------------------------------------------------------------------------

nnoremap  <silent><F2>         :set spell!<CR>
xnoremap  <silent><F2>         :set spell!<CR>
inoremap  <silent><F2>         :set spell!<CR>

augroup     KEYBINDS
    autocmd!
    autocmd FileType cpp,c nmap <F3>        <Plug>VgbAddBreak
    autocmd FileType cpp,c xmap <F3>        <Plug>VgbAddBreak
    autocmd FileType cpp,c nmap <Space><F3> <Plug>VgbRemBreak
    autocmd FileType cpp,c xmap <Space><F3> <Plug>VgbRemBreak
    autocmd FileType cs    nnoremap <F5>    :wa!<cr>:Dispatch<Space>
    autocmd FileType c     nnoremap <F5>    :wa!<cr>:Make<Space>
    autocmd FileType cpp   nnoremap <F5>    :wa!<cr>:Make<Space>

    " Used primarly from Mutt
    au BufRead /tmp/neomutt-* nnoremap <CR><CR>  :wq<CR>
augroup END

nmap <silent><F6>        <Plug>MarkSet
xmap <silent><F6>        <Plug>MarkSet
nmap <silent><Space><F6> <Plug>MarkRegex
xmap <silent><Space><F6> <Plug>MarkRegex
nmap <silent><M-F6>      <Plug>MarkAllClear

nnoremap <silent><F7>        :call ToggleList()<CR>
xnoremap <silent><F7>        :call ToggleList()<CR>
inoremap <silent><F7>        :call ToggleList()<CR>
nnoremap <silent><Space><F7> :call TrimWhiteSpace()<CR>
xnoremap <silent><Space><F7> :call TrimWhiteSpace()<CR>

nnoremap  ,f  :find *
nnoremap  ,b  :ls<CR>:buffer<Space>
nnoremap  ,t  :tag *<Tab>
nnoremap  ,ct :tag *<C-r><C-w><Tab>

"resize windows
nnoremap <C-w><Up>    <C-W>+<C-W>+
nnoremap <C-w><Down>  <C-W>-<C-W>-
nnoremap <C-w><Left>  <C-W>><C-W>>
nnoremap <C-w><Right> <C-W><<C-W><

"window shortcuts
nnoremap <Space>v <C-w>v
nnoremap <Space>h <C-w>s
nnoremap <Space>x :close<CR>
nnoremap <Space>R <C-W>=

" Toggle to last buffer
nnoremap <BS> <C-^>

" Kill the current buffer
nnoremap <Space>xb :bd<CR>

nnoremap <Space>sa      :saveas<Space>
nnoremap <Space><Space> :w<CR>

" Yank the line
nnoremap Y y$
xnoremap <Space>y "+y
xnoremap <Space>d "+d
nnoremap <Space>p "+p
nnoremap <Space>P "+P
xnoremap <Space>p "+p
xnoremap <Space>P "+P

"yank all to clipboard
nnoremap <Space>A :%y+<CR>

"select all
nnoremap <Space>a ggVG

" Insert line below/above and return to normal
nnoremap t o<Esc>k
nnoremap T O<Esc>j

" Quickly edit/reload the vimrc file
nnoremap <silent> <Space>ev :e $MYVIMRC<CR>
nnoremap <silent> <Space>sv :so $MYVIMRC<CR>

"Toggle current fold"
nnoremap <silent> <Space>f za
"Close/Open all folds"
nnoremap <silent> <Space>cz zm
nnoremap <silent> <Space>zz zr

"V mode mappings
xnoremap < <gv
xnoremap > >gv

" search bindings
command! -nargs=+ -complete=file_in_path -bar MyGrep silent! grep! <args> | redraw! | copen 40
nnoremap <silent><Space>s :MyGrep <C-r><C-w><CR>
nnoremap <Space>S :MyGrep<Space>

"make mappings for Dispatch
nmap <Space><CR> :Dispatch!<Space>
vmap <Space><CR> <Esc>:Make!<Space>
nmap <C-M><C-C>  :make clean<CR>
vmap <C-M><C-C>  <Esc>:make clean<CR>


" Diff mappings
nnoremap <Space>gl      :diffg MINE<CR>:diffupdate<CR>
nnoremap <Space>gr      :diffg THEIRS<CR>:diffupdate<CR>
nnoremap <Space>gb      :diffg BASE<CR>:diffupdate<CR>
nnoremap <silent><Down> ]c
nnoremap <silent><Up>   [c
nnoremap ,du            :diffupdate<CR>

"Easy Align mappings
xmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"ViMux mappings
nnoremap <Space>vp :VimuxPromptCommand<CR>
nnoremap <Space>vl :VimuxRunLastCommand<CR>
nnoremap <Space>vo :VimuxOpenPane<CR>
nnoremap <Space>vq :VimuxCloseRunner<CR>

" Move this to a project specific vimrc someday, since it only works for a specific project setup
nnoremap <Space>ut :call RunUnitTests("./tests.sh")<CR>

"DoxygenToolkit mappings
nnoremap <Space>dx :Dox<CR>
nnoremap <Space>da :DoxAuthor<CR>

" paste mode
nnoremap <silent><Space>tp :set paste!<CR>

"spelling stuff
nnoremap <Space>w :call FixLastSpellingError()<cr>
nnoremap <Space>W z=

" obtained from /u/romainl vimrc excerpts and gists
"""""""""""""""""""""""""""""""""
" JUGGLING WITH WORDS AND LINES "
"""""""""""""""""""""""""""""""""
nnoremap <Space><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <Space><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>:noh<CR>
nnoremap <silent> <Space><Up>   :<C-u>move-2<CR>==
nnoremap <silent> <Space><Down> :<C-u>move+<CR>==
xnoremap <silent> <Space><Up>   :move-2<CR>gv=gv
xnoremap <silent> <Space><Down> :move'>+<CR>gv=gv

nnoremap <silent>,oq :copen<CR>
nnoremap <silent>,cq :cclose<CR>
nnoremap <silent>,ol :lopen<CR>
nnoremap <silent>,cl :lclose<CR>
nnoremap <silent>,cp <C-w><C-z>
nnoremap <silent>,ch :helpclose<CR>

nnoremap <Space>sr :'{,'}s/<C-r>=expand('<cword>')<CR>/
nnoremap <Space>%  :%s/<C-r>=expand('<cword>')<CR>/

" Auto expansions
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [];<Esc>2hi

nnoremap <Space>i :Ilist /
nnoremap ' `

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap == =%
inoremap `` <C-K>Sb

onoremap <silent> af :<C-U>normal! [[kV][j<CR>

for char in ['<bar>', '/', '<bslash>', '*', '+', ':', ';', '_', '-', '#', ',', '.' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

