#!/usr/bin/python

import keyring
# import sys


def get_password(ring, account):
    pwd = keyring.get_password(ring, account)
    return pwd


# print(get_password(sys.argv[1], sys.argv[2]))
