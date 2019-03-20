set auto-load safe-path /

python
import sys
sys.path.insert(0, '/home/derek/workspaces/stlpretty')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

 source ~/.gdb/gdb-dashboard
 source ~/.gdb/gdb-dash-config
 source ~/.gdb/gdb-prompts

skip -gfi /usr/include/c++/*/*/*
skip -gfi /usr/include/c++/*/*
skip -gfi /usr/include/c++/*
skip -gfi /build/gcc/src/gcc-build/x86_64-pc-linux-gnu/*/*/*
skip -gfi /build/gcc/src/gcc-build/x86_64-pc-linux-gnu/*/*
skip -gfi /build/gcc/src/gcc-build/x86_64-pc-linux-gnu/*
skip -rfu ^std::.*

set history save on
set print pretty on
set pagination off
set confirm off
