#!/usr/bin/python

import keyring
import sys

pwd = keyring.get_password(sys.argv[1], sys.argv[2])
print(pwd)
