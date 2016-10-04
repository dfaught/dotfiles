# Create a named pipe to get outputs from gdb
set auto-load safe-path /

python
import sys
sys.path.insert(0, '/usr/local/share/gcc-4.9.2/python/libstdcxx/v6')
sys.path.insert(0, '/usr/lib/python2.7/site-packages')
end

source ~/.gdb/gdb-dashboard
source ~/.gdb/gdb-prompts

dashboard -style style_high '1;37'
dashboard -style prompt_not_running '\\[\\e[1;30m\\]>>>\\[\\e[0m\\]'
dashboard -style style_error '31'
dashboard -style prompt '{status}'
dashboard -style divider_label_margin 1
dashboard -style divider_label_skip 3
dashboard -style style_selected_2 '1;32'
dashboard -style divider_label_style_off_secondary '1;37'
dashboard -style divider_label_style_on_secondary '0'
dashboard -style divider_fill_char_primary '\xe2\x94\x80'
dashboard -style divider_label_style_on_primary '1;34'
dashboard -style prompt_running '\\[\\e[1;35m\\]>>>\\[\\e[0m\\]'
dashboard -style ansi True
dashboard -style divider_fill_style_primary '1;32'
dashboard -style divider_fill_style_secondary '1;36'
dashboard -style divider_label_align_right False
dashboard -style style_selected_1 '0;34'
dashboard -style divider_label_style_off_primary '33'
dashboard -style divider_fill_char_secondary '\xe2\x94\x80'
dashboard -style style_low '0;32'
dashboard -style syntax_highlighting 'solarized'

dashboard source -style context 15
dashboard source -style 

dashboard assembly -style context 10
dashboard stack -style limit 10
dashboard stack -style local False
dashboard stack -style arguments False

dashboard -layout breakpoints threads history expressions memory registers assembly source stack

define do
dashboard -output $arg0
end
