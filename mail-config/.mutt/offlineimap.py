#!/usr/bin/python


import sys
import gi

gi.require_version('GnomeKeyring', '1.0')

import keyring


def get_password(ring, account):
    pwd = keyring.get_password(ring, account)
    return pwd


if __name__ == '__main__':
    print(get_password(sys.argv[1], sys.argv[2]))
