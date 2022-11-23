import os
import sys

if sys.platform != 'win32':
    print "Windows only."
    sys.exit(0)

import stat
import time
import subprocess
import win32gui
import win32con

foxit = "C:\\Program Files\\Foxit Software\\Foxit Reader\\Foxit Reader.exe"
lily = "C:\\Program Files\\LilyPond\\usr\\bin\\lilypond.exe"

class ModTimes(object):
    def __init__(self,directory=''):
        self.directory = directory
        self.lastmod = {}
        self.Snapshot()

    def Snapshot(self):
        lastmod = {}
        for nm in os.listdir(self.directory):
            if nm[-3:] != '.ly':
                continue
            lastmod[nm] = os.stat(nm).st_mtime
        self.lastmod = lastmod

    def Scan(self):
        new = []
        for nm in self.lastmod.keys():
            mt = os.stat(nm).st_mtime
            if mt > self.lastmod[nm]:
                new.append(nm)
                print nm, "changed"
                self.lastmod[nm] = mt
        return new

def CheckFoxit(nm):
    w = win32gui.FindWindow(None, '%s - Foxit Reader' % nm)
    if w:
        win32gui.SendMessage(w, win32con.WM_CLOSE, 0, 0 )

def CheckAdobe(nm):
    w = win32gui.FindWindow(None, '%s - Adobe Reader' % nm)
    if w:
        win32gui.SendMessage(w, win32con.WM_CLOSE, 0, 0 )

def HandleOne(nm):
    base = os.path.splitext(nm)[0]

    ly = base + '.ly'
    log = base + '.log'
    pdf = base + '.pdf'

    print "*** Handling",ly
    CheckAdobe(pdf)
    CheckFoxit(pdf)
    if os.path.exists(log):
        os.remove(log)
    time.sleep( 0.25 )

    print "Run Lilypond"
    o,e = subprocess.Popen( [lily,ly], stdout=subprocess.PIPE, stderr=subprocess.PIPE ).communicate()
    if e.find('error:') >= 0:
        print e
        print "ERRORS ENCOUNTERED"
        return

    print "Success!"
    o = subprocess.Popen( [foxit,pdf] )

mon = ModTimes('.')
while 1:
    time.sleep(1.0)
    map( HandleOne, mon.Scan() )

