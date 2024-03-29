set auto-load safe-path /

# python
# import sys
# sys.path.insert(0, '/usr/share/gcc-11.2.0/python')
# from libstdcxx.v6.printers import register_libstdcxx_printers
# register_libstdcxx_printers (None)
# end

 source ~/.gdb/gdb-dashboard
 source ~/.gdb/gdb-dash-config
 source ~/.gdb/gdb-prompts

skip -gfi /usr/include/c++/*/*/*
skip -gfi /usr/include/c++/*/*
skip -gfi /usr/include/c++/*
skip -gfi /usr/lib/gcc/x86_64-pc-linux-gnu/*/*/*
skip -gfi /usr/lib/gcc/x86_64-pc-linux-gnu/*/*
skip -gfi /usr/lib/gcc/x86_64-pc-linux-gnu/*
skip -rfu ^std::.*

set history save on
set print pretty on
set pagination off
set confirm off
set output-radix 16
set breakpoint pending on
set disassembly-flavor intel
