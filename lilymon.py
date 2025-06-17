#! /usr/bin/python3

# Monitor the directory for Lilypond changes.

import os
import glob
import time

def get_all():
    last = {}
    for fn in glob.glob("*.ly"):
        last[fn] = os.stat(fn).st_mtime
    return last

def recompile(fn):
    os.system("lilypond "+fn)

basis = get_all()
while 1:
    time.sleep(1)
    newbasis = get_all()
    for k in newbasis:
        if k not in basis or newbasis[k] > basis[k]:
            recompile(k)
    basis = newbasis
