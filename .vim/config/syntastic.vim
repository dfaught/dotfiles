"Syntastic.vim
"All Syntastic settings

let g:syntastic_check_on_open=1

au FileType cpp let g:syntastic_check_on_open=0
au FileType cpp set foldlevelstart=4

"use fancy symbols
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'

"enable ballons
let g:syntastic_enable_ballons=1

" Automatically check syntax on files, but don't do it for html
"    the syntastic warnings for html are uber-annoying.
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['html','c','h','cpp','hpp'] }

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1

let g:syntastic_stl_format= '[%E{E: %e}%B{, } %W{W: %w}]'

"Syntax checkers
let g:syntastic_enable_c_checker=0
let g:syntastic_enable_cpp_checker=0
let g:syntastic_c_checkers=['gcc']
let g:syntastic_c_check_header=0
let g:syntastic_cpp_check_header=0
let g:syntastic_c_remove_include_errors=1
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_cpp_no_include_search=1
let g:syntastic_c_auto_refresh_includes=1
let g:syntastic_c_cflags='-DHAVE_CONFIG_H'
let g:syntastic_cpp_cflags='-DHAVE_CONFIG_H'
let g:syntastic_cpp_compiler_options='-std=c++11'

let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_autoload_maven_classpath=1
let g:syntastic_cs_checkers=['dmcs']  
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore="E111,E121,E201,E202,E203,E211,E251,E5"'

" For some reason this has to be here.
set showcmd
