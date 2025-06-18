#! /usr/bin/python3

# Monitor the directory for Lilypond changes.

import os
import time
import glob

def GetTimes():
    return {fn: os.stat(fn).st_mtime for fn in glob.glob('*.ly')}

def Compile(fn):
    print( "Compiling", fn )
    os.system(f'lilypond {fn}')

def CheckOnce(times):
    for fn,time in times.items():
        pdfn = fn.replace('.ly','.pdf')
        if os.path.exists(pdfn) and os.stat(pdfn).st_mtime < time:
            Compile(fn)

basis = GetTimes()
# This is an issue with older files.
CheckOnce(basis)
while 1:
    time.sleep(1)
    newbasis = GetTimes()
    for k in basis:
        if k not in newbasis or newbasis[k] > basis[k]:
            Compile(k)
    basis = newbasis
