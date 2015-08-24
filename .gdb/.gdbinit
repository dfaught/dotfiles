# Create a named pipe to get outputs from gdb
shell test -e /tmp/coloutPipe && rm /tmp/coloutPipe
shell mkfifo /tmp/coloutPipe

#python
#  import sys
#  sys.path.insert(0, '/home/derek/home-ext/workspaces/git.local/stdpretty')
#  from libstdcxx.v6.printers import register_libstdcxx_printers
#  register_libstdcxx_printers (None)
#end

#python from .gdb-helpers import *

source ~/.gdb/gdb-config-vars
source ~/.gdb/gdb-aliases
source ~/.gdb/gdb-arm
source ~/.gdb/gdb-intel
source ~/.gdb/gdb-process
source ~/.gdb/gdb-colout
source ~/.gdb/gdb-context
source ~/.gdb/gdb-hooks
source ~/.gdb/gdb-prompts
#source ~/.gdb/gdb-big

