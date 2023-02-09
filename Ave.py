parts = (
    ( "'flt",  5, "flute" ),
    ( "'clr1", 3, "clarinetone" ),
    ( "'clr2", 3, "clarinettwo" ),
    ( "'clr3", 3, "clarinetthree" ),
    ( "'clra", 1, "altoclarinet" ),
    ( "'clrb", 2, "bassclarinet" ),
    ( "'saxa", 2, "altosax" ),
    ( "'saxt", 2, "tenorsax" ),
    ( "'saxb", 1, "barisax" ),
    ( "'tpt1", 3, "trumpetone" ),
    ( "'tpt2", 3, "trumpettwo" ),
    ( "'tpt3", 3, "trumpetthree" ),
    ( "'hrn1", 3, "hornone" ),
    ( "'hrn2", 2, "horntwo" ),
    ( "'tbn1", 4, "tromboneone" ),
    ( "'tbn2", 4, "trombonetwo" ),
    ( "'tbnb", 1, "basstrombone" ),
    ( "'eutc", 2, "euphoniumtc" ),
    ( "'eubc", 4, "euphoniumbc" ),
    ( "'tuba", 3, "tuba" )
)

lp=r'"C:\Program Files\LilyPond\usr\bin\lilypond.exe"'

lily = """
\include "AveMaria.ly"
\score {
  \keepWithTag #%s \parts
  \layout { }
}
"""

print lp,"AveMariaScore.ly"

pdfs = []

for a,b,c in parts:
    fn = "AveMaria-%s.ly" % c
    open(fn,'w').write(lily % a)
    print lp,fn
    pdfs.extend( [fn.replace('ly','pdf')]*b )

print "erase /q ave.pdf"
print "pdftk",' '.join(pdfs),"output ave.pdf"
print "erase AveMaria-*.ly"
print "erase AveMaria-*.log"
print "erase AveMaria-*.ps"
print "erase AveMaria-*.pdf"
