#!/usr/bin/env python2


import subprocess
import sys

def get_password(ring, account):
    return subprocess.check_output(['/home/derek/dotfiles/.mail-config/.mutt/offlineimap.py', ring, account]).rstrip()


if __name__ == '__main__':
    print(get_password(sys.argv[1], sys.argv[2]).rstrip())
