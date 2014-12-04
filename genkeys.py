#!/usr/bin/python
# -*- coding: utf-8 -*-
# @author: bcabezas@apsl.net

"""
For each arg name, sets environ and prints a var name and a generated key
If  value exists in environ, uses this value

Example usage: Generate drupal default keys: 

genkeys DRUPAL_HASH_SALT

"""

import os
import sys
import random
import string


def pwgen(length):
    chars = string.ascii_letters + string.digits + '_-()/@'
    random.seed = (os.urandom(1024))
    return ''.join(random.choice(chars) for i in range(length))


def main():
    for name in sys.argv[1:]:
        value = os.environ.get(name, pwgen(64))
        os.environ[name] = value
        print('export {}="{}"'.format(name, value))


if __name__ == "__main__":
    main()

