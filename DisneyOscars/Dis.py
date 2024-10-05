import os
import glob
import subprocess

parts = (
    ( "'flt1",  5, "fluteone" ),
    ( "'flt2",  5, "flutetwo" ),
    ( "'oboe",  1, "oboe" ),
    ( "'clr1", 3, "clarinetone" ),
    ( "'clr2", 3, "clarinettwo" ),
    ( "'clr3", 3, "clarinetthree" ),
#    ( "'clra", 1, "altoclarinet" ),
#    ( "'clrb", 2, "bassclarinet" ),
    ( "'saxa", 2, "altosax" ),
    ( "'saxt", 2, "tenorsax" ),
#    ( "'saxb", 1, "barisax" ),
    ( "'tpt1", 3, "trumpetone" ),
    ( "'tpt2", 3, "trumpettwo" ),
    ( "'tpt3", 3, "trumpetthree" ),
    ( "'hrn1", 3, "hornone" ),
#    ( "'hrn2", 2, "horntwo" ),
    ( "'tbn1", 4, "tromboneone" ),
    ( "'tbn2", 4, "trombonetwo" ),
    ( "'tbn3", 4, "trombonethree" ),
#    ( "'tbnb", 1, "basstrombone" ),
    ( "'eutc", 2, "euphoniumtc" ),
    ( "'eubc", 4, "euphoniumbc" ),
    ( "'tuba", 3, "tuba" )
)

lp='lilypond'

lily = r"""
\version "2.16.1"
\paper {
    system-system-spacing
    .padding = #13
}
\include "DisneyOscars.ly"
\score {
  \keepWithTag #%s \parts
  \layout { }
}
"""

def execute( *cmds ):
    print(' '.join(cmds))
    subprocess.call( cmds )

execute( lp,"DisneyOscarsScore.ly" )

pdfs = ["cpdf"]

for a,b,c in parts:
    fn = "Disney-%s.ly" % c
    open(fn,'w').write(lily % a)
    execute( lp,fn )
    pdfs.extend( [fn.replace('ly','pdf')]*b )

pdfs.extend( ["-o", "out.pdf"] )

execute( *pdfs )
for name in glob.glob('Disney-*'):
    print( "rm", name )
    os.remove( name )
