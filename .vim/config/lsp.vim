" Register ccls C++ lanuage server.
if executable('ccls')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'ccls',
				\ 'cmd': {server_info->['ccls']},
				\ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
				\ 'initialization_options': { 'cacheDirectory': '/tmp/ccls/cache' },
				\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
				\ })
endif

if executable('pyls')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'pyls',
				\ 'cmd': {server_info->['pyls']},
				\ 'whitelist': ['python'],
				\ })
endif

if executable('bash-language-server')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'bash-language-server',
				\ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
				\ 'whitelist': ['sh'],
				\ })
endif

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:lsp_signs_error                                  = {'text': '✘'}
let g:lsp_signs_warning                                = {'text': '☢'}
let g:lsp_signs_hint                                   = {'text': 'H'}
let g:lsp_signs_information                            = {'text': 'I'}
