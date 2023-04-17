" Keybindings.vim

" Repeat the last command
nnoremap <Space>. @:

" clear out search
nnoremap <Esc><Esc> :noh<cr>

"tab to move through brackets"
 " nnoremap | %
 " xnoremap | %

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

nnoremap <silent><F1> <NOP>
nnoremap <silent><F2> :set spell!<CR>
xnoremap <silent><F2> :set spell!<CR>
inoremap <silent><F2> :set spell!<CR>

augroup     KEYBINDS
    autocmd!
    autocmd FileType cpp,c nmap <F3>        <Plug>VgbAddBreak
    autocmd FileType cpp,c xmap <F3>        <Plug>VgbAddBreak
    autocmd FileType cpp,c nmap <Space><F3> <Plug>VgbRemBreak
    autocmd FileType cpp,c xmap <Space><F3> <Plug>VgbRemBreak

    " Used primarly from Mutt
    au BufRead /tmp/neomutt-* nnoremap <CR><CR>  :wq<CR>
augroup END

nmap <silent><F6>        <Plug>MarkSet
xmap <silent><F6>        <Plug>MarkSet
nmap <silent><Space><F6> <Plug>MarkRegex
xmap <silent><Space><F6> <Plug>MarkRegex
nmap <silent><M-F6>      <Plug>MarkAllClear

nnoremap <silent><F7>        :call commands#ToggleList()<CR>
xnoremap <silent><F7>        :call commands#ToggleList()<CR>
inoremap <silent><F7>        :call commands#ToggleList()<CR>
nnoremap <silent><Space><F7> :call commands#TrimWhiteSpace()<CR>
xnoremap <silent><Space><F7> :call commands#TrimWhiteSpace()<CR>

nnoremap  ,f  :find *
nnoremap  ,b  :ls<CR>:buffer<Space>
nnoremap  ,t  :tag *<Tab>
nnoremap  ,ct :tag *<C-r><C-w><Tab>

if has('win32')
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-h> <C-w>h
    nnoremap <C-l> <C-w>l
endif

"resize windows
nnoremap <C-w><Up>    <C-W>+<C-W>+
nnoremap <C-w><Down>  <C-W>-<C-W>-
nnoremap <C-w><Left>  <C-W>><C-W>>
nnoremap <C-w><Right> <C-W><<C-W><

"window shortcuts
nnoremap <Space>v <C-w>v
nnoremap <Space>h <C-w>s
nnoremap ,x :close<CR>
nnoremap <Space>R <C-W>=

" Toggle to last buffer
nnoremap <BS> <C-^>

" Kill the current buffer
nnoremap ,xb :bd<CR>

nnoremap <Space>sa      :saveas<Space>
nnoremap <Space><Space> :w<CR>

" Yank the line
nnoremap Y y$
nnoremap <Space>y "+yy
xnoremap <Space>y "+y
nnoremap <Space>d "+dd
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
nnoremap <Space><BS> :Dispatch<Space>
nnoremap <Space><CR> :wa<Esc>:Make<CR>
nnoremap <Space>mc :Make clean<CR>


" Diff mappings
nnoremap <Space>gl      :diffg LOCAL<CR>:diffupdate<CR>
nnoremap <Space>gr      :diffg REMOTE<CR>:diffupdate<CR>
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
nnoremap <silent>,vo :call VimuxOpenRunner()<CR>
nnoremap <silent>,vq :call VimuxCloseRunner()<CR>

" Move this to a project specific vimrc someday, since it only works for a specific project setup
nnoremap <Space>ut :call commands#RunUnitTests("./unit_tests.sh")<CR>

"DoxygenToolkit mappings
nnoremap <Space>dx :Dox<CR>
nnoremap <Space>da :DoxAuthor<CR>
nnoremap <Space>dl : DoxLic

" paste mode
nnoremap <silent><Space>tp :set paste!<CR>

"spelling stuff
nnoremap <Space>w :call commands#FixLastSpellingError()<cr>
nnoremap <Space>W z=

" obtained from /u/romainl vimrc excerpts and gists
nnoremap <Space><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <Space><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>:noh<CR>
nnoremap <silent> <Space><Up>   :<C-u>move-2<CR>==
nnoremap <silent> <Space><Down> :<C-u>move+<CR>==
xnoremap <silent> <Space><Up>   :move-2<CR>gv=gv
xnoremap <silent> <Space><Down> :move'>+<CR>gv=gv

" Open and close lists
nnoremap <silent>,oq :copen<CR>
nnoremap <silent>,cq :cclose<CR>
nnoremap <silent>,ol :lopen<CR>
nnoremap <silent>,cl :lclose<CR>
nnoremap <silent>,cp <C-w><C-z>
nnoremap <silent>,ch :helpclose<CR>

nnoremap <Space>sr :'{,'}s/<C-r>=expand('<cword>')<CR>/
nnoremap <Space>sG :.,$s/<C-r>=expand('<cword>')<CR>/
nnoremap <Space>%  :%s/\(<C-r>=expand('<cword>')<CR>\)/
nnoremap <Space>sc  :%s/\(<C-r>=expand('<cword>')<CR>\)//c<Left><Left>

" Auto expansions
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [];<Esc>2hi

nnoremap <Space>i :Ilist <C-r>=expand('<cword>')<CR>
nnoremap ' `

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap == =%
inoremap ,. <C-K>Sb
nnoremap `` `.

onoremap <silent> af :<C-U>normal! [[kV][j<CR>

inoremap <silent><expr> ,, coc#refresh()
nmap <space>] <Plug>(coc-definition)
nmap <space>[ <Plug>(coc-declaration)
nmap <space>g] <Plug>(coc-references)
nmap <space>gR <Plug>(coc-refactor)
nmap <space>g} <Plug>(coc-implementation)
nmap <space>dh :call CocActionAsync('doHover')<cr>

for char in ['<bar>', '/', '<bslash>', '*', '+', ':', ';', '_', '-', '#', ',', '.' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

