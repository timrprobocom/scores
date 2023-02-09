import os
import sys
import subprocess

PMW = "c:\\dev\\pmw-4.12\\src\\pmw.exe"
ACRO = "C:\\Program Files\\Adobe\\Adobe Acrobat 7.0\\Distillr\\Acrodist.exe"


for fn in sys.argv[1:]:
    full = os.path.abspath( fn )
    new = os.path.splitext(full)[0] + '.ps'
    log = os.path.splitext(full)[0] + '.log'
    print [PMW, full]
    subprocess.call( [PMW, full] )
    print [ACRO, '/Q', '/V', new]
    subprocess.call( [ACRO, '/Q', '/V', new] )
    os.remove( new )
    os.remove( log )
