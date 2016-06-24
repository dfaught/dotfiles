"youcompleteme.vim

let g:ycm_confirm_extra_conf                        = 0
"let g:ycm_global_ycm_extra_conf                     = '~/.ycm_extra_conf.py'

let g:ycm_auto_start_csharp_server                  = 1
let g:ycm_auto_stop_csharp_server                   = 1

let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion  = 0

let g:ycm_always_populate_location_list             = 1

let g:ycm_error_symbol                              = '✘'
let g:ycm_warning_symbol                            = '⚠'
"highlight YcmErrorLine                              cterm=underline ctermfg=red guifg=red
"highlight YcmWarningLine                            cterm=underline ctermfg=yellow guifg=yellow
highlight YcmErrorSection                           cterm=underline ctermfg=red guifg=red
highlight YcmWarningSection                         cterm=underline ctermfg=yellow guifg=yellow

let g:ycm_min_num_of_chars_for_completion           = 1
let g:ycm_complete_in_comments                      = 1
let g:ycm_complete_in_strings                       = 1

let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files       = 1
let g:ymc_seed_identifiers_with_syntax              = 1
let g:ycm_add_preview_to_completeopt                = 0

let g:ycm_key_list_select_completion                = ['<Tab>', '<Down>']
let g:ycm_key_list_previous_completion              = ['<A-Tab>', '<Up>']

let g:ycm_goto_buffer_command                       = 'horizontal-split'

"let g:ycm_server_keep_logfiles=1
"let g:ycm_server_log_level=debug

"I use <C-Space> for tmux now.
let g:ycm_key_invoke_completion = '<A-Enter>'
